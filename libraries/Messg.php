<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

/**
 * @package     Baka Igniter Pack
 * @author      Fery Wardiyanto
 * @copyright   Copyright (c) Fery Wardiyanto. <ferywardiyanto@gmail.com>
 * @license     http://dbad-license.org
 * @version     Version 0.1.4
 * @since       Version 0.1.0
 */

// -----------------------------------------------------------------------------

/**
 * BAKA Message Class
 *
 * @subpackage  Libraries
 * @category    Messages
 */
class Messg
{
    /**
     * Messages wrapper
     *
     * @var  array
     */
    protected static $messages = array();

    protected static $levels   = array('success', 'info', 'warning', 'error');

    /**
     * Default class constructor
     */
    public function __construct()
    {
        log_message('debug', "#BakaIgniter: Messg Class Initialized");
    }

    /**
     * Setup messages
     *
     * @param   string        $level     Message Level
     * @param   string|array  $msg_item  Message Items
     *
     * @return  void
     */
    public static function set($level, $msg_item)
    {
        if (!in_array($level, self::$levels))
        {
            log_message('error', '#BakaIgniter: Messg->set Unkown message level "'.$level.'"');
            return FALSE;
        }

        if (is_array($msg_item) and count($msg_item) > 0)
        {
            foreach ($msg_item as $item)
            {
                self::set($level, $item);
            }
        }
        else
        {
            self::$messages[$level][] = $msg_item;
        }
    }

    /**
     * Get all messages
     *
     * @param   string  $level Message Level
     *
     * @return  array
     */
    public static function get($level = FALSE)
    {
        if ($level and isset(self::$messages[$level]))
        {
            return self::$messages[$level];
        }

        return self::$messages;
    }

    /**
     * Clean up
     *
     * @return  void
     */
    public static function clear()
    {
        self::$messages = array();
    }
}

/* End of file Messg.php */
/* Location: ./application/third_party/bakaigniter/libraries/Messg.php */