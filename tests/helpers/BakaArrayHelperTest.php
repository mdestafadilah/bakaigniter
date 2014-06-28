<?php

/**
 * BAKA Array Helper Test Case
 *
 * @subpackage  Array
 * @category    Helper
 */
class BakaArrayHelper_TestCase extends PHPUnit_Framework_TestCase
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

        $this->ci->load->helper('baka_array');
    }

    public function testInstance()
    {
        $this->assertFalse(FALSE);
    }
}

/* End of file BakaArrayHelperTest.php */
/* Location: ./tests/helpers/BakaArrayHelperTest.php */
