<?php

/**
 * BAKA Array Helper Test Case
 *
 * @subpackage  Array
 * @category    Helper
 */
class BakaArrayHelper_TestCase extends BakaIgniter_TestCase
{
    public function setUp()
    {
        $this->ci->load->helper('baka_array');
    }

    public function testInstance()
    {
        $this->assertFalse(FALSE);
    }
}

/* End of file BakaArrayHelperTest.php */
/* Location: ./tests/helpers/BakaArrayHelperTest.php */
