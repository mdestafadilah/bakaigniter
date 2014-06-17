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
// BAKA Application Name
$config['baka_app_name']            = 'BPMPPT App';
// BAKA Application Description
$config['baka_app_desc']            = 'Aplikasi pengelolaan data perijinan di BPMPPT Kab. Pekalongan';
// BAKA Application Description
$config['baka_app_client']          = 'BPMPPT Kab. Pekalongan';
// BAKA Application Version
$config['baka_app_version']         = '0.1.4';
// BAKA Application Author
$config['baka_app_author']          = 'Fery Wardiyanto';
// BAKA Application Author Email
$config['baka_app_author_email']    = 'ferywardiyanto@gmail.com';
// BAKA Application Author Url
$config['baka_app_author_url']      = 'http://feryardiant.github.io';
// BAKA Application Repository Url
$config['baka_app_repo_url']        = 'http://github.com/feryardiant/bpmppt';
// BAKA Application Documentation
$config['baka_app_doc_url']         = '';

// BAKA Minimal Web Browser Version
$config['baka_app_min_browser']     = array(
    'Firefox'           => 4,
    'Chrome'            => 8,
    'Internet Explorer' => 8,
    );

// BAKA Igniter Base Path
$config['baka_base_path']     = dirname(dirname(__FILE__)).'/';

/*
|--------------------------------------------------------------------------
| Table name configurations
|--------------------------------------------------------------------------
*/
// BAKA media table name
$config['baka_media_table']             = 'media';

// BAKA system_opt table name
$config['baka_system_opt_table']        = 'system_opt';
// BAKA system_env table name
$config['baka_system_env_table']        = 'system_env';

// BAKA users table name
$config['baka_users_table']             = 'auth_users';
// BAKA user_meta table name
$config['baka_user_meta_table']         = 'auth_usermeta';
// BAKA user_profiles table name
$config['baka_user_profile_table']      = 'auth_user_profiles';
// BAKA user_group table name
$config['baka_user_role_table']         = 'auth_user_roles';
// BAKA user_meta table name
$config['baka_roles_table']             = 'auth_roles';
// BAKA user_permission table name
$config['baka_permissions_table']       = 'auth_permissions';
// BAKA user_permission table name
$config['baka_role_perms_table']        = 'auth_role_permissions';
// BAKA user_permission table name
$config['baka_overrides_table']         = 'auth_overrides';
// BAKA users table name
$config['baka_user_autologin_table']    = 'auth_user_autologin';
// BAKA users table name
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
// BAKA temporary folder name
$config['baka_temp_path']           = APPPATH.'storage/tmp/';
// BAKA upload folder name
$config['baka_upload_path']         = APPPATH.'storage/upload/';
// BAKA allowed file types
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