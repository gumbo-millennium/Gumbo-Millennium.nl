<?php if (!defined('IN_PHPBB')) exit;

/*---------------------------------------------------------------
 * PROPHPBB ANTISPAM
 * VERSION 1.0.0
 * BY JOE HAYES, FOR PROPHPBB.COM
 *---------------------------------------------------------------
 * INSTALLATION IS AS EASY AS 1-2-3
 *---------------------------------------------------------------
 *
 *	1) Upload prophpbb_antispam.php to your phpBB includes/ucp/ directory
 *	
 *	2) In the same directory, edit ucp_register.php
 *			find: // DNSBL check
 *			add above: include('prophpbb_antispam.php');
 *	
 *	3) Edit language/en/common.php and, at end of the file, right before the closing ?>, add:
 *			$lang['PROPHPBB_ANTISPAM'] = '<strong>Spam registration stopped</strong><br />&raquo; %1$s';
 *			
 *	To test: 	go to http://stopforumspam.com and get the username and email of a top spammer, 
 *				and try registering with those credentials on your forum.
 *
 *---------------------------------------------------------------
 * CONFIGURATION
 *-------------------------------------------------------------*/
 
	// Stop Forum Spam
	$sfs_threshold 	= 50; // 0-300, 50 default, 0 to disable

	// Project Honeypot (requires api key https://www.projecthoneypot.org)
	$php_threshold 	= 0; // 0-100, 20 default, 0 to disable
	$php_api_key 	= '';

	// Whitelist of emails to always allow
	$whitelist_emails = array(
		'bestuur@gumbo-millennium.nl',  
	);

	// Error message to show user
	$spam_error_message = 'We think you\'re probably trying to spam. Please contact the <a href="mailto:'.htmlspecialchars($config['board_contact']).'">board administrator</a>.';

	// Log all denied spammers to a file? Set to false to disable. Default is store directory because it's (should be) protected by .htaccess
	$spam_log_file_path = $phpbb_root_path.'store/antispam_log.txt';

/*---------------------------------------------------------------
 * DO NOT MODIFY BELOW
 *-------------------------------------------------------------*/

// Check only if no other errors (captcha valid, etc.)
if (!sizeof($error))
{
	$prophpbb_antispam = new ProphpBB_Antispam($data);
	$prophpbb_antispam->check($sfs_threshold, $php_threshold, $php_api_key, $whitelist_emails, $error, $spam_error_message, $spam_log_file_path);
}

class ProphpBB_Antispam
{
	private $user;

	function __construct($data)
	{
		// Notice the lack of globals. I hate that about phpBB
		$this->user = new stdClass();
		$this->user->username = $data['username'];
		$this->user->email = $data['email'];
		$this->user->ip = $this->get_reliable_ip();
	}
	
	function check($sfs_threshold = 0, $php_threshold = 0, $php_api_key = '', $whitelist_emails = array(), &$error, $spam_error_message, $spam_log_file_path)
	{
		// Override allowed emails
		if (in_array($this->user_email, $whitelist_emails)) return false;
			
		// Check Stop Forum Spam
		if (($sfs_threshold != 0) && (($sfs_score = $this->get_sfs_score()) > $sfs_threshold))
		{
			// Add to phpBB admin log
			$sfs_ip = '<a target="_new" title="Check IP at StopForumSpam.com (opens in a new window)" href="http://www.stopforumspam.com/ipcheck/'.$this->user->ip.'">IP</a>';
			$sfs_username = '<a target="_new" title="Check Username at StopForumSpam.com (opens in a new window)" href="http://www.stopforumspam.com/search/?q='.urlencode($this->user->username).'">Username</a>';
			$sfs_email = '<a target="_new" title="Check Email at StopForumSpam.com (opens in a new window)" href="http://www.stopforumspam.com/search/?q='.urlencode($this->user->email).'">Email</a>';
			$log_message = 'Stopforumspam confidence of '.$sfs_score.': '.$sfs_username.' - '.$sfs_email.' - '.$sfs_ip;
			add_log('admin', 'PROPHPBB_ANTISPAM', $log_message);
			
			// Log to file for debugging
			if ($spam_log_file_path)
			{
				@file_put_contents($spam_log_file_path, date('Y-m-d H:i:s').' -> SFS blocked -> score: '.$sfs_score.', username: '.$this->user->username.', email: '.$this->user->email.', IP: '.$this->user->ip.PHP_EOL, FILE_APPEND | LOCK_EX);
			}
			
			// Add to the phpBB error message array
			return $error[] = $spam_error_message;
		}
		// Check Project Honeypot
		else if (($php_threshold != 0) && ($php_api_key != '') && (($php_score = $this->get_php_score($php_api_key)) > $php_threshold))
		{	
			// Add to phpBB admin log
			$php_ip = '<a target="_new" title="Check IP at Project Honeypot (opens in a new window)" href="https://www.projecthoneypot.org/ip_'.$this->user->ip.'">Check IP</a>';
			$log_message = 'Project Honeypot threat rating of '.$php_score.': '.$php_ip;
			add_log('admin', 'PROPHPBB_ANTISPAM', $log_message);
			
			// Log to file for debugging
			if ($spam_log_file_path)
			{
				@file_put_contents($spam_log_file_path, date('Y-m-d H:i:s').' -> PHP blocked -> score: '.$php_score.', IP: '.$this->user->ip.PHP_EOL, FILE_APPEND | LOCK_EX);
			}
			
			// Add to the phpBB error message array
			return $error[] = $spam_error_message;
		}
		else // We're clean!
		{
			return false;
		}
	}
   
	// Stop Forum Spam
	function get_sfs_score()
	{
		// They want the username and email url encoded
		$username = urlencode($this->user->username);
		$email = urlencode($this->user->email);
		
		// Get data in serialized format for speed
		$sfs_data = $this->get_contents('http://www.stopforumspam.com/api?username='.$username.'&email='.$email.'&ip='.$this->user->ip.'&f=serial');
		
		// Got SFS data?
		if ($sfs_data = unserialize($sfs_data))
		{
			// Get confidence scores
			$username_confidence = (!empty($sfs_data['username']['confidence']) && is_numeric($sfs_data['username']['confidence'])) ? 
				(int) $sfs_data['username']['confidence'] : 0;
			$email_confidence = (!empty($sfs_data['email']['confidence']) && is_numeric($sfs_data['email']['confidence'])) ? 
				(int) $sfs_data['email']['confidence'] : 0;
			$ip_confidence = (!empty($sfs_data['ip']['confidence']) && is_numeric($sfs_data['ip']['confidence'])) ? 
				(int) $sfs_data['ip']['confidence'] : 0;
				
			// Don't ban an otherise innocent registrant with a common username and IP
			if ($email_confidence + $ip_confidence == 0) $username_confidence = 0;
			if ($email_confidence + $username_confidence == 0) $ip_confidence = 0;
			
			// Set the sfs spam score
			return ($username_confidence + $email_confidence + $ip_confidence);
		}
		else // Could not query the SFS database
		{
			return 0;
		}
	}
	
	function get_php_score($api_key)
	{
		// Project Honeypot wants the ip octets reversed. Weird, but oh well...
		$reversed_ip = implode('.', array_reverse(explode ('.', $this->user->ip)));
		
		// Check IP against their IP
		$query_url = $api_key . '.' . $reversed_ip . '.dnsbl.httpbl.org';
		
		if ($results = dns_get_record($query_url, DNS_A))
		{
			// Process the results
			if (isset($results[0]['ip']))
			{
				$results = explode('.', $results[0]['ip']);
				return ($results[0] == 127) ? $results[2] : 0;
			}
		}
		else // Error getting record or results not found
		{
			return 0;
		}
	}
	
	// Try to get with file_get_contents, else use curl
	function get_contents($url)
	{
		if (ini_get('allow_url_fopen')) // try to use file_get_contents()
		{
			return @file_get_contents($url);
		}
		else if (function_exists('curl_init')) // we'll try curl
		{
			$c = curl_init();
			curl_setopt($c, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($c, CURLOPT_URL, $url);
			$contents = curl_exec($c);
			curl_close($c);

			return ($contents) ? $contents : false;	
		}
		else // neither working
		{
			die('Could not use get_contents() function in ProphpBB Anti-Spam');
		}
	}
	
	// Get IP address more reliably than how phpBB does it
	function get_reliable_ip()
	{
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) return $_SERVER['HTTP_CLIENT_IP']; // shared internet
		else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) return $_SERVER['HTTP_X_FORWARDED_FOR']; // proxy
		else return $_SERVER['REMOTE_ADDR']; // use the traditional way
	}
}