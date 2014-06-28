# Baka Igniter 0.1.4 [![Build Status](https://travis-ci.org/feryardiant/bakaigniter.svg?branch=master)](https://travis-ci.org/feryardiant/bakaigniter)

Yet another Codeigniter Started Package that used on my projects and licensed under [DBAD-license](http://dbad-license.org).

## Author

**[Fery Wardiyanto](http://github.com/feryardiant)**

## Features

+ **Form Generator**
+ **Table Grid Generator**
+ **All feature of TankAuth** with additional modification
+ comming soon :grin:

## Todos

+ This package still buggy, fix that :grin:
+ Test cases is fake, just to make it possible to test with phpunit

### Directory and File Structures

```
bakaigniter/
├─ config/                               // config dir 
│  └─ bakaigniter.php                    // bakaigniter
├─ helpers/                              // helpers dir 
│  ├─ baka_array_helper.php              // baka_array_helper
│  ├─ baka_asssets_helper.php            // baka_asssets_helper
│  ├─ baka_authr_helper.php              // baka_authr_helper
│  ├─ baka_common_helper.php             // baka_common_helper
│  ├─ baka_data_helper.php               // baka_data_helper
│  ├─ baka_former_helper.php             // baka_former_helper
│  ├─ baka_recaptcha_helper.php          // baka_recaptcha_helper
│  ├─ baka_themee_helper.php             // baka_themee_helper
│  └─ baka_twbs_helper.php               // baka_twbs_helper
├─ language/                             // language dir 
│  ├─ english/                           // english dir 
│  │  └─ bakaigniter_lang.php            // bakaigniter_lang
│  └─ indonesian/                        // indonesian dir 
│     └─ bakaigniter_lang.php            // bakaigniter_lang
├─ libraries/                            // libraries dir 
│  ├─ Archive/                           // Archive dir 
│  │  ├─ drivers/                        // drivers dir 
│  │  │  └─ Archive_zip.php              // Archive_zip
│  │  └─ Archive.php                     // Archive
│  ├─ Authr/                             // Authr dir 
│  │  ├─ drivers/                        // drivers dir 
│  │  │  ├─ Authr_autologin.php          // Authr_autologin
│  │  │  ├─ Authr_login_attempt.php      // Authr_login_attempt
│  │  │  ├─ Authr_permissions.php        // Authr_permissions
│  │  │  ├─ Authr_role_perms.php         // Authr_role_perms
│  │  │  ├─ Authr_roles.php              // Authr_roles
│  │  │  ├─ Authr_user_meta.php          // Authr_user_meta
│  │  │  ├─ Authr_user_perms.php         // Authr_user_perms
│  │  │  ├─ Authr_user_roles.php         // Authr_user_roles
│  │  │  └─ Authr_users.php              // Authr_users
│  │  └─ Authr.php                       // Authr
│  ├─ vendor/                            // vendor dir 
│  │  ├─ captcha/                        // captcha dir 
│  │  │  ├─ resources/                   // resources dir 
│  │  │  └─ captcha.php                  // captcha
│  │  ├─ PasswordHash.php                // PasswordHash
│  │  └─ php_error.php                   // php_error
│  ├─ Asssets.php                        // Asssets
│  ├─ Bakahooks.php                      // Bakahooks
│  ├─ Bakaigniter.php                    // Bakaigniter
│  ├─ Former.php                         // Former
│  ├─ Gridr.php                          // Gridr
│  ├─ Median.php                         // Median
│  ├─ Themee.php                         // Themee
│  └─ Utily.php                          // Utily
├─ samples/                              // samples dir 
│  ├─ application/                       // application dir 
│  │  ├─ config/                         // Sample configuration
│  │  │  ├─ autoload.php                 // autoload
│  │  │  ├─ config.php                   // config
│  │  │  ├─ constants.php                // constants
│  │  │  ├─ database.php                 // database
│  │  │  └─ hooks.php                    // hooks
│  │  ├─ core/                           // core dir 
│  │  │  ├─ MY_Controller.php            // MY_Controller
│  │  │  ├─ MY_Exceptions.php            // MY_Exceptions
│  │  │  └─ MY_Loader.php                // MY_Loader
│  │  ├─ errors/                         // errors dir 
│  │  │  └─ error_cli.php                // error_cli
│  │  └─ libraries/                      // libraries dir 
│  │     └─ MY_Form_validation.php       // MY_Form_validation
│  ├─ asset/                             // asset dir 
│  │  ├─ css/                            // css dir 
│  │  ├─ fonts/                          // fonts dir 
│  │  ├─ img/                            // img dir 
│  │  └─ less/                           // less dir 
│  ├─ system/                            // system dir 
│  │  └─ core/                           // core dir 
│  │     └─ Utf8.php                     // Utf8
│  └─ database.sql                       // Sample database
└─ tests/                                // tests dir 
   ├─ core/                              // core dir 
   │  └─ MYControllerTest.php            // MYControllerTest
   ├─ helpers/                           // helpers dir 
   │  └─ BakaArrayHelperTest.php         // BakaArrayHelperTest
   ├─ libraries/                         // libraries dir 
   │  └─ AsssetsTest.php                 // AsssetsTest
   └─ bootstrap.php                      // bootstrap
```

## Installation

### Soon! when all bugs was fixed

## Credits

+ [Codeigniter](http://ellislab.com/codeigniter)
+ [CI Tank Auth Enchance (modified)](http://github.com/TankAuth/Tank-Auth/tree/enchance)
  + [Cool PHP Captcha](https://code.google.com/p/cool-php-captcha/)
  + [Google ReCaptcha (optional)](http://recaptcha.net/plugins/php/)
+ [Codeigniter PHPUnit (modified)](https://github.com/fmalk/codeigniter-phpunit)
+ [jQuery (modified)](http://jquery.com)
+ [jQuery UI (modified)](http://jqueryui.com)
+ [jQuery Autosize](http://www.jacklmoore.com/autosize)
+ [FineUploader](http://fineuploader.com)
+ [Select2 (modified)](http://ivaynberg.github.io/select2/)
+ [Twitter Bootstrap (modified)](http://getbootstrap.com)
+ [Bootstrap Datepicker (modified)](http://www.eyecon.ro/bootstrap-datepicker)
+ [Bootstrap Switch (modified)](http://www.bootstrap-switch.org)
+ [Summernote (modified)](http://hackerwins.github.io/summernote/)
  + [CodeMirror](http://codemirror.net)
+ [Font Awesome](http://fortawesome.github.io/Font-Awesome/)
+ [Datatables](http://datatables.net/)

## Copyright and license

**Various trademarks and licenses held by their respective owners.**
