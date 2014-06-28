<?php

/**
 * BAKA Controller Class
 *
 * @subpackage  Core
 * @category    Controller
 */
class Asssets_TestCase extends BakaIgniter_TestCase
{
    public function setUp()
    {
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
