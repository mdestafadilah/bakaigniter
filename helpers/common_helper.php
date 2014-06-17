<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * @package     Baka Igniter Pack
 * @subpackage  Common
 * @category    Helper
 * @author      Fery Wardiyanto
 * @copyright   Copyright (c) Fery Wardiyanto. <ferywardiyanto@gmail.com>
 * @license     http://dbad-license.org
 * @since       Version 0.1.3
 */

// -----------------------------------------------------------------------------

function _x($lang_line, $replacement = '')
{
    $CI_lang =& get_instance()->lang;

    $lang_line = $CI_lang->line($lang_line);

    if (is_array($replacement) and count($replacement) > 0)
    {
        return vsprintf($lang_line, $replacement);
    }
    else if (is_string($replacement) and strlen($replacement) > 0)
    {
        return sprintf($lang_line, $replacement);
    }
    else
    {
        return $lang_line;
    }
}

// -----------------------------------------------------------------------------

function redirect($uri = '', $method = 'location', $http_response_code = 302)
{
    if ( IS_CLI )
    {
        echo "Redirectings: $uri\n";
        exit;
    }

    if ( ! preg_match('#^https?://#i', $uri))
    {
        $uri = site_url($uri);
    }

    switch($method)
    {
        case 'refresh'  : header("Refresh:0;url=".$uri);
            break;

        default         : header("Location: ".$uri, TRUE, $http_response_code);
            break;
    }
    exit;
}

// -----------------------------------------------------------------------------

function return_bytes($val)
{
    if (!is_string($val))
    {
        return FALSE;
    }

    $val    = trim($val);
    $last   = strtolower($val[strlen($val)-1]);

    switch ($last)
    {
        case 'g': $val *= 1024;
        case 'm': $val *= 1024;
        case 'k': $val *= 1024;
    }

    return $val;
}

// -----------------------------------------------------------------------------

function format_size($size)
{
    $sizes  = Array('B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB');
    $y      = $sizes[0];

    for ($i = 1; (($i < count($sizes)) && ($size >= 1024)); $i++)
    {
        $size   = $size / 1024;
        $y      = $sizes[$i];
    }

    return round($size, 2).' <span class="muted">'.$y.'</span>';
}

// -----------------------------------------------------------------------------

function baka_echo($anu)
{
    if (is_array($anu) OR is_object($anu))
    {
        var_dump($anu);
    }
    else
    {
        echo $anu;
    }
}

// -----------------------------------------------------------------------------

/**
 * CI default get spesific config item with 'baka_' prefix
 *
 * @param   string  $name  Config name
 *
 * @return  mixed
 */
function get_conf($name)
{
    return config_item('baka_'.$name);
}

// -----------------------------------------------------------------------------

/**
 * Get file extension from path
 *
 * @param   string  $path  Full file path
 * @return  string
 */
function get_ext($path)
{
    return pathinfo($path, PATHINFO_EXTENSION);
}

/* End of file common_helper.php */
/* Location: ./application/third_party/bakaigniter/helpers/common_helper.php */