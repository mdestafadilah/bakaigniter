<?php

/**
 * CodeIgniter Baka Pack
 *
 * My very own Codeigniter Boilerplate Library that used on all of my projects
 *
 * NOTICE OF LICENSE
 *
 * Licensed under the Open Software License version 3.0
 *
 * This source file is subject to the Open Software License (OSL 3.0) that is
 * bundled with this package in the files license.txt / license.rst.  It is
 * also available through the world wide web at this URL:
 * http://opensource.org/licenses/OSL-3.0
 *
 * @package     Baka_test_pack
 * @author      Fery Wardiyanto
 * @copyright   Copyright (c) Fery Wardiyanto. (ferywardiyanto@gmail.com)
 * @license     http://opensource.org/licenses/OSL-3.0
 * @since       Version 0.1.4
 */

// -----------------------------------------------------------------------------

/**
 * BAKA Controller Class
 *
 * @subpackage  Core
 * @category    Controller
 */
class MYController_TestCase extends BakaIgniter_TestCase
{
    private $_bc = FALSE;

    public function setUp()
    {
        if (class_exists('MY_Controller'))
        {
            $this->_bc = new MY_Controller;
        }
    }

    public function testInstance()
    {
        $this->assertNotFalse($this->_bc);
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */
