<?php if (! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * MY Controller Class
 *
 * @subpackage  Core
 * @category    Controller
 */
class MY_Controller extends CI_Controller
{
    protected $current_user;

    /**
     * Default class constructor
     */
    function __construct()
    {
        parent::__construct();

        set_script('jquery',    'lib/jquery.min.js', '', '2.0.3');
        set_script('baka-pack', 'script.js', 'jquery' );
        set_style('baka-pack',  'style.min.css');

        if ($this->themee->verify_browser())
        {
            log_message('error', lang("error_browser_jadul"));
            show_error(array('Peramban yang anda gunakan tidak memenuhi syarat minimal penggunaan aplikasi ini.','Silahkan gunakan '.anchor('http://www.mozilla.org/id/', 'Mozilla Firefox', 'target="_blank"').' atau '.anchor('https://www.google.com/intl/id/chrome/browser/', 'Google Chrome', 'target="_blank"').' biar lebih GREGET!'), 500, 'error_browser_jadul');
        }

        if ($this->authr->is_logged_in())
        {
            $this->current_user = $this->authr->get_current_user();
        }

        log_message('debug', "#BakaIgniter: Core Controller Class Initialized");
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */