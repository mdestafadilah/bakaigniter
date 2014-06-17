<?php if (! defined('BASEPATH')) exit('No direct script access allowed');

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
 * Baka Igniter Bootstrap Class
 *
 * @subpackage  Libraries
 * @category    Bootstrap
 */
class Ignite
{
    /**
     * Codeigniter superobject
     *
     * @var  resources
     */
    protected $_ci;

    /**
     * Default class constructor
     */
    public function __construct()
    {
        $this->_ci =& get_instance();

        $this->_ci->load->driver('authr');
        $this->_ci->load->library('setting');
        $this->_ci->load->library('messg');
        $this->_ci->load->library('themee');

        log_message('debug', "#BakaIgniter: Ignite Library Class Initialized");
    }
}

/* End of file Gridr.php */
/* Location: ./application/third_party/bakaigniter/libraries/Gridr.php */