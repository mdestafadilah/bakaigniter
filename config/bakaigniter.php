<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * @package     Baka Igniter Pack
 * @author      Fery Wardiyanto
 * @copyright   Copyright (c) Fery Wardiyanto. <ferywardiyanto@gmail.com>
 * @license     http://dbad-license.org
 * @since       Version 0.1.3
 */

/*
|--------------------------------------------------------------------------
| Default application configurations
|--------------------------------------------------------------------------
*/
// Baka Igniter Application Name
$config['baka_app_name']            = 'BPMPPT App';
// Baka Igniter Application Description
$config['baka_app_desc']            = 'Aplikasi pengelolaan data perijinan di BPMPPT Kab. Pekalongan';
// Baka Igniter Application Description
$config['baka_app_client']          = 'BPMPPT Kab. Pekalongan';
// Baka Igniter Application Version
$config['baka_app_version']         = '0.1.4';
// Baka Igniter Application Author
$config['baka_app_author']          = 'Fery Wardiyanto';
// Baka Igniter Application Author Email
$config['baka_app_author_email']    = 'ferywardiyanto@gmail.com';
// Baka Igniter Application Author Url
$config['baka_app_author_url']      = 'http://feryardiant.github.io';
// Baka Igniter Application Repository Url
$config['baka_app_repo_url']        = 'http://github.com/feryardiant/bpmppt';
// Baka Igniter Application Documentation
$config['baka_app_doc_url']         = '';

// Baka Igniter Minimal Web Browser Version
$config['baka_app_min_browser']     = array(
    'Firefox'           => 4,
    'Chrome'            => 8,
    'Internet Explorer' => 8,
    );

// Baka Igniter Base Path
$config['baka_base_path']           = dirname(dirname(__FILE__)).'/';

/*
|--------------------------------------------------------------------------
| Table name configurations
|--------------------------------------------------------------------------
*/
// Baka Igniter media table name
$config['baka_media_table']             = 'media';

// Baka Igniter system_opt table name
$config['baka_system_opt_table']        = 'system_opt';
// Baka Igniter system_env table name
$config['baka_system_env_table']        = 'system_env';

// Baka Igniter users table name
$config['baka_users_table']             = 'auth_users';
// Baka Igniter user_meta table name
$config['baka_user_meta_table']         = 'auth_usermeta';
// Baka Igniter user_profiles table name
$config['baka_user_profile_table']      = 'auth_user_profiles';
// Baka Igniter user_group table name
$config['baka_user_role_table']         = 'auth_user_roles';
// Baka Igniter user_meta table name
$config['baka_roles_table']             = 'auth_roles';
// Baka Igniter user_permission table name
$config['baka_permissions_table']       = 'auth_permissions';
// Baka Igniter user_permission table name
$config['baka_role_perms_table']        = 'auth_role_permissions';
// Baka Igniter user_permission table name
$config['baka_overrides_table']         = 'auth_overrides';
// Baka Igniter users table name
$config['baka_user_autologin_table']    = 'auth_user_autologin';
// Baka Igniter users table name
$config['baka_login_attempts_table']    = 'auth_login_attempts';

/*
|--------------------------------------------------------------------------
| Table name configurations
|--------------------------------------------------------------------------
*/
$config['baka_default_meta_fields'] = array(
    'firstname' => '',
    'lastname'  => '',
    'phone'     => '',
    'address'   => ''
    );


/*
|--------------------------------------------------------------------------
| File Upload configuration
|--------------------------------------------------------------------------
*/
// Baka Igniter temporary folder name
$config['baka_temp_path']           = APPPATH.'storage/tmp/';
// Baka Igniter upload folder name
$config['baka_upload_path']         = APPPATH.'storage/upload/';
// Baka Igniter allowed file types
$config['baka_allowed_types']       = 'gif|jpg|jpeg|png';
$config['baka_thumb_height']        = 100;
$config['baka_thumb_width']         = 100;

/*
|--------------------------------------------------------------------------
| Cool Captcha settings
|
| When upgraidng Cool Captcha, simple replace the contents of the captcha folder
| with the new version. No editing required.
|--------------------------------------------------------------------------
*/
$config['baka_cool_captcha_folder'] = APPPATH.'third_party/bakaigniter/vendor/captcha/';

/*
|--------------------------------------------------------------------------
| Security settings
|
| The library uses PasswordHash library for operating with hashed passwords.
| 'phpass_hash_portable' = Can passwords be dumped and exported to another server.
|                           If set to FALSE then you won't be able to use this database on another server.
| 'phpass_hash_strength' = Password hash strength.
|--------------------------------------------------------------------------
*/
$config['baka_phpass_hash_portable'] = FALSE;
$config['baka_phpass_hash_strength'] = 8;


/* End of file BakaIgniter.php */
/* Location: ./application/config/BakaIgniter.php */