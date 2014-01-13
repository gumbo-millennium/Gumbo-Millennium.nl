<?php

include_once (dirname(__FILE__) . '/settings.php');

function twitter_build_base_string($baseURI, $method, $params)
{
    $args = array();
    ksort($params);
    foreach ($params as $key => $value) {
        $args[] = $key . '=' . rawurlencode($value);
    }
    return $method . "&" . rawurlencode($baseURI) . '&' . rawurlencode(implode('&', $args));
}

function twitter_build_authorization_header($oauth)
{
    $header = 'Authorization: OAuth ';
    $values = array();
    foreach ($oauth as $key => $value) {
        $values[] = "$key=\"" . rawurlencode($value) . "\"";
    }
    $header .= implode(', ', $values);
    return $header;
}

if (empty($twitter_config['consumer_key']) ||
    empty($twitter_config['consumer_secret']) ||
    empty($twitter_config['access_token']) ||
    empty($twitter_config['access_token_secret'])
) {
    die('Missing token from twitter configuration.');
}

if (!isset($_GET['url'])) {
    die('No URL set');
}
$url = $_GET['url'];

$url_parts = parse_url($url);
parse_str($url_parts['query'], $url_arguments);

$full_url = $twitter_config['api_url'] . $url; // Url with the query on it.
$base_url = $twitter_config['api_url'] . $url_parts['path']; // Url without the query.

$oauth_config = array(
    'oauth_consumer_key' => $twitter_config['consumer_key'],
    'oauth_nonce' => time(),
    'oauth_signature_method' => 'HMAC-SHA1',
    'oauth_token' => $twitter_config['access_token'],
    'oauth_timestamp' => time(),
    'oauth_version' => '1.0'
);
$base_info = twitter_build_base_string($base_url, 'GET', array_merge($oauth_config, $url_arguments));
$composite_key = rawurlencode($twitter_config['consumer_secret']) . '&' . rawurlencode($twitter_config['access_token_secret']);
$oauth_signature = base64_encode(hash_hmac('sha1', $base_info, $composite_key, true));
$oauth_config['oauth_signature'] = $oauth_signature;

$oauth_header = array(
    twitter_build_authorization_header($oauth_config),
    'Expect:'
);
$curl_options = array(
    CURLOPT_HTTPHEADER => $oauth_header,
    CURLOPT_HEADER => false,
    CURLOPT_URL => $full_url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_SSL_VERIFYPEER => false
);

$feed = curl_init();
curl_setopt_array($feed, $curl_options);
$result = curl_exec($feed);
$info = curl_getinfo($feed);
curl_close($feed);

if (isset($info['content_type']) && isset($info['size_download'])) {
    header('Content-Type: ' . $info['content_type']);
    header('Content-Length: ' . $info['size_download']);
}

echo($result);
die();