<?php

/**
 * BAKA Controller Class
 *
 * @subpackage  Core
 * @category    Controller
 */
class Asssets_TestCase extends PHPUnit_Framework_TestCase
{
    /**
     * Reference to CodeIgniter
     *
     * @var resource
     */
    protected $ci;

    public function setUp()
    {
        $this->ci =& get_instance();

        $this->ci->load->library('asssets');
    }

    public function testInstance()
    {
        // array_to_object
        $this->assertFalse(FALSE);
    }
}

/* End of file AsssetsTest.php */
/* Location: ./tests/libraries/AsssetsTest.php */
