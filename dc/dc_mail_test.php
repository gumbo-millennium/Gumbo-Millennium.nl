<?php
## save this as mailer.php
$mailTo = null;
$message = null;
if ((isset($_POST['submit'] ))&& ((!empty($_POST['email'])) && ((!empty($_POST['message']))))){
  $mailTo = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);  
  $message = wordwrap(filter_var($_POST['message'], FILTER_SANITIZE_STRING) , 50 );
  $from_name = "Geco";
  $from_email = "gercoversloot@gmail.com";
  $headers = "From: $from_name <$from_email>";
  $headers .= "Date: ".date("D, d M Y H:i:s") . " UT\r\n";
  $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
  $result = @mail( $mailTo , $subject, $message, $headers );

}
?>
<form method="post" action="dc_mail_test.php">
<label>Recipient's Email Address</label>
<input type="text" name="email" placeholder="Enter Recipient's email here">
<br/>
<label>Type Subject</label>
<input type="text" name="subject" placeholder="Type Subject here">
<br/>
<textarea name="message" > </textarea>
<br/>
<input type="submit" name="submit" value="send email">
</form>
<br/>
Summary: <?php echo $subject; ?>
<br/>
Message Sent to: <?php echo $mailTo; ?>
<br/>
Message : <?php echo $message; ?>
<br/>