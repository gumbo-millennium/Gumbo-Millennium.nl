<?php
/*
  * @copyright 2013 Ceasar Feijen www.cfconsultancy.nl
  * @Google+ photo albums generator
  * @This is not free software
  */
 
  if (!defined('IN_PHPBB'))
{
	exit;
}


class googleplus
{
	protected $userid = '115209623445926663380';
	protected $cachelife = 86400; //24*60*60;
	protected $maxresults = 1000;
	protected $thumbsize = 200;
	protected $cropping  = 'u';
	protected $xmlpath;
	protected $curlinit;
	protected $total;
	protected $maxtotal;
	protected $descriptionlength = 300;
	protected $titlelength = 75;

	public function __construct()
	{
		global $phpbb_root_path;
		$this->curlinit = function_exists('curl_init');
		$this->curlinit = $phpbb_root_path. "/cache";
	}

	protected function truncate($string, $length = '', $replacement = ' ..', $start = 75) //alternative substr
	{
		if (strlen($string) <= $start)
			return $string;
		if ($length)
		{
			return substr_replace($string, $replacement, $start, $length);
		}
		else
		{
			return substr_replace($string, $replacement, $start);
		}
	}

    protected function mbencoding($string)
    {
        if (function_exists('mb_convert_encoding'))
        {
            return mb_convert_encoding($string, 'HTML-ENTITIES', 'UTF-8');
        }
        else
        {
            return htmlentities(utf8_encode($string));
        }
	}

	public function set_userid($userid) // Set username
	{
		$this->userid = $userid;
	}

	public function set_titlelength($titlelength) // Set title lenght
	{
		$this->titlelength = $titlelength;
	}

	public function set_descriptionlength($descriptionlength) // Set title lenght
	{
		$this->descriptionlength = $descriptionlength;
	}

	public function set_maxresults($maxresults) // Set max results; default: 1000
	{
		$this->maxresults = intval($maxresults); // We need typeof int
	}

	public function set_thumbsize($thumbsize) // Set max thumbsize; default: 200
	{
		$this->thumbsize = intval($thumbsize); // We need typeof int
	}

	public function set_cropping($cropping) // Set cropping : c, u; default: u
	{
		$mogelijk = array('c', 'u');
		if(!in_array($cropping, $mogelijk))
		{
			throw new InvalidArgumentException('cropping isn\'t of these: c, u');
		}
		else
		{
			$this->cropping  = $cropping;
		}
	}

	public function set_cachexml ($cache) // Bool, 1 use cache, 0 don't use cache
	{
		if($cache === false || $cache === true)
		{
			$this->cachexml = $cache;
		}
		else
		{
			throw new InvalidArgumentException('set_cachexml can only be boolean');
		}
	}

	public function set_cachelife ($cachelife) // Lifetime of cache NOTE: USE SECONDS!
	{
		$this->cachelife = $cachelife; // No check
	}

	public function set_xmlpath ($path) // Set where to store xml files
	{
		$this->xmlpath = $path;
	}

	protected function build_url($type, $album_uuid = 0) // Generate url
	{
		switch ($type)
		{
			case 'album':
                return 'https://picasaweb.google.com/data/feed/api/user/' . $this->userid . '/albumid/' . $album_uuid . '?imgmax=d&thumbsize=' . $this->thumbsize . $this->cropping . '&kind=photo&max-results=' . $this->maxresults . '&prettyprint=true';
				break; 
			case 'albums':
                return 'https://picasaweb.google.com/data/feed/api/user/' . $this->userid . '?prettyprint=true';
				break; 
			default:
				throw new InvalidArgumentException('Build_url need right type');
		}
	}

	public function get_album($album_uuid) // Use this function. You have to use the right type
	{
		$xmldoc = new DOMDocument();

		$url = $this->build_url('album', $album_uuid);
		$file = realpath($this->xmlpath) . DIRECTORY_SEPARATOR . md5($url) . '.xml';

		if($this->cachexml && $this->cache_file($file))
		{
			if(@!$xmldoc->load($file))
			{
				throw new Exception('Error loading feed');

			}
		}
		else
		{
			if($this->curlinit)
			{
				if(@!$xmldoc->loadXML($this->curl_request($url)))
				{
					throw new Exception('Error loading feed');
				}
			}
			else
			{
				if(@!$xmldoc->load($url))
				{
					throw new Exception('Error loading feed' . $url);
				}
			}

			if($this->cachexml)
			{
			@file_put_contents($file, $xmldoc->saveXML()); // Suppres error. User can't help this error... Should log
			}
		}

		$xml = simplexml_load_file($url);

		$xpath = new DOMXPath($xmldoc);

		$xpath->registerNamespace('feaed', 'http://www.w3.org/2005/Atom');
        $xpath->registerNamespace('gphoto', 'http://schemas.google.com/photos/2007');
		$query = '//feaed:feed/feaed:entry';
		$data = $xpath->query($query);
		$albumdata = array();
		$total = (integer) $xml->children('openSearch', true)->totalResults;
		$maxtotal = (integer) $xml->children('openSearch', true)->itemsPerPage;
        $albumtitle  = (string) $xml->children()->title;
        $author = (string) $xml->children()->author->name;
        $url = (string) $xml->children()->author->uri;
        $published = (string) $xml->children()->updated;
		foreach($data as $dat)
		{
			$temparray = array();

            $query = '//gphoto:timestamp';
            $temparray['timestamp'] = $xpath->query($query, $dat)->item(0)->nodeValue;

            $query = '//gphoto:version';
            $temparray['version'] = $xpath->query($query, $dat)->item(0)->nodeValue;

			$query = 'media:group/media:description';
			$temparray['description'] = $this->mbencoding(ucfirst(strtolower($this->truncate($xpath->query($query, $dat)->item(0)->nodeValue,'',' ..',$this->descriptionlength))));

			$query = 'media:group/media:title';
			$temparray['title'] = $this->mbencoding($this->truncate($xpath->query($query, $dat)->item(0)->nodeValue,'',' ..',$this->titlelength));

			$query = 'media:group/media:credit';
			$temparray['credit'] = $this->mbencoding($this->truncate($xpath->query($query, $dat)->item(0)->nodeValue,'',' ..',$this->titlelength));

			$query = 'media:group/media:content';
			$temparray['content'] = $xpath->query($query, $dat)->item(0)->getAttribute('url');

			$query = 'media:group/media:thumbnail';
			$temparray['thumbnail'] = $xpath->query($query, $dat)->item(0)->getAttribute('url');

			$title_convered = $this->album_title_converter($albumtitle, $published);
			
			$albumdata[] = $temparray;
		}
		$title_convered = $this->album_title_converter($albumtitle, $published);
		return array(
			'total' => $total, 
			'albumtitle' => $title_convered['title'], 
			'name' => $author, 
			'url' => $url, 
			'maxtotal' => $maxtotal, 
			'published' => $title_convered['published'],
			'photos' => $albumdata 
		);
	}
	
	
	public function get_albums() // Use this function. You have to use the right type
	{
		$xmldoc = new DOMDocument();

		$url = $this->build_url('albums');

		$file = realpath($this->xmlpath) . DIRECTORY_SEPARATOR . md5($url) . '.xml';

		if($this->cachexml && $this->cache_file($file))
		{
			if(@!$xmldoc->load($file))
			{
				throw new Exception('Error loading feed');

			}
		}
		else
		{
			if($this->curlinit)
			{
				if(@!$xmldoc->loadXML($this->curl_request($url)))
				{
					throw new Exception('Error loading feed');
				}
			}
			else
			{
				if(@!$xmldoc->load($url))
				{
					throw new Exception('Error loading feed' . $url);
				}
			}

			if($this->cachexml)
			{
			@file_put_contents($file, $xmldoc->saveXML()); // Suppres error. User can't help this error... Should log
			}
		}

		$xml = new SimpleXMLElement($url, null, true);

		$albums = array();
		$albums['totalAlbums'] = intval($xml->children('openSearch', true)->totalResults);
		foreach ($xml->entry as $key => $entry) {
			$temparray = array();
			$temparray['id'] = $entry->children('gphoto',true)->id;
			$temparray['thumbnail_url'] = $entry->children('media',true)->group->children('media',true)->thumbnail->attributes()->url;
			
			$title_convered = $this->album_title_converter($entry->title, $entry->children('gphoto',true)->timestamp);
			if($title_convered['from_map_title']){ // if the title is retrieved from the map name (yyyymmdd) it a gumbo album for display   
				$temparray['published'] = $title_convered['published'];
				$temparray['title'] = $title_convered['title'];
				$albums['entries'][$title_convered['published']->format('Y')][] = $temparray;
			}else{
				$albums['totalAlbums']--;
			}
		}
		krsort($albums['entries']);
		return $albums;
	}

	protected function album_title_converter($album_title, $timestamp){

		$year = intval(substr($album_title, 0, 4));
		$month = intval(substr($album_title, 4, 2));
		$day = intval(substr($album_title, 6, 2));
		if(strlen($year) == 4 && checkdate($month, $day, $year)){
			$new_title = substr($album_title, 8);
			$published = new dateTime($year ."-". $month ."-". $day);
			$from_map_title = true;
		}else{
			$new_title = $album_title;
			$published = new dateTime();
			$published->setTimestamp(floatval( strval($timestamp) )/1000);
			$from_map_title = false;
		}
		return array(
			'full_title' 	=> $album_title,
			'title'			=> $new_title,
			'published' 	=> $published,
			'from_map_title'	=> $from_map_title

		);
	}
	

	protected function curl_request($url) // Make a cURL request
	{
		$chf = curl_init();
		//$header = array('X-GData-Key: key=key here') ;
		$timeout = 15; // set to zero for no timeout
		curl_setopt ($chf, CURLOPT_URL, $url);
		curl_setopt ($chf, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt ($chf, CURLOPT_CONNECTTIMEOUT, $timeout);
	       if(stripos($url,'https:') !== false){
	           curl_setopt($chf, CURLOPT_SSL_VERIFYPEER, FALSE);
	           curl_setopt($chf, CURLOPT_SSL_VERIFYHOST, 2);
	       }

		$feedcontents = curl_exec($chf);
		curl_close($chf);
		return $feedcontents;
	}

	protected function cache_file($file) // check for cache life time
	{
		return file_exists($file) && filemtime($file) > time() - $this->cachelife;
	}

	private static function albumsYearSort($a, $b)
	{
	    if ($a == $b) {
	        return 0;
	    }
	    return ($a < $b) ? -1 : 1;
	}
}
?>