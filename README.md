# Baka Igniter 0.1.4

Yet another Codeigniter Started Package that used on my projects and licensed under [DBAD-license](http://dbad-license.org).

## Authors

**[Fery Wardiyanto](http://github.com/feryardiant)**

### Structure of Baka Igniter

```
bakaigniter/
├─ config
│  └─ bakaigniter.php
├─ helpers
│  ├─ array_helper.php
│  ├─ asssets_helper.php
│  ├─ authr_helper.php
│  ├─ common_helper.php
│  ├─ data_helper.php
│  ├─ emailer_helper.php
│  ├─ former_helper.php
│  ├─ recaptcha_helper.php
│  ├─ themee_helper.php
│  └─ twbs_helper.php
├─ language
│  └─ indonesian
│      └─ bakaigniter_lang.php
├─ libraries
│  ├─ Archive
│  │  ├─ Archive.php
│  │  └─ drivers
│  │     └─ Archive_zip.php
│  ├─ Authr
│  │  ├─ Authr.php
│  │  └─ drivers
│  │     ├─ Authr_autologin.php
│  │     ├─ Authr_login_attempt.php
│  │     ├─ Authr_permissions.php
│  │     ├─ Authr_role_perms.php
│  │     ├─ Authr_roles.php
│  │     ├─ Authr_user_log.php
│  │     ├─ Authr_user_meta.php
│  │     ├─ Authr_user_perms.php
│  │     ├─ Authr_user_roles.php
│  │     └─ Authr_users.php
│  ├─ Asssets.php
│  ├─ Former.php
│  ├─ Gridr.php
│  ├─ Ignite.php
│  ├─ Median.php
│  ├─ Messg.php
│  ├─ Setting.php
│  ├─ Themee.php
│  └─ Utily.php
└─ samples
    ├─ config
    │  ├─ autoload.php
    │  ├─ config.php
    │  └─ constants.php
    ├─ core
    │  ├─ BAKA_Controller.php
    │  ├─ BAKA_Exceptions.php
    │  └─ BAKA_Loader.php
    ├─ database.sql
    ├─ hooks
    │  └─ bakaigniter.php
    └─ libraries
        └─ BAKA_Form_validation.php

```

## Installation

1. **Move to** `third_party` folder:

   ```bash
   $ cd APPPATH/third_party
   ```

2. **Download it**

   * **Clone this repo** into your:

     ```bash
     $ git clone git@github.com:feryardiant/bakaigniter.git
     ```

   * **Use it as Submodule** into your:

     ```bash
     $ git submodule add git@github.com:feryardiant/bakaigniter.git bakaigniter
     ```

   * **Download using wget** archive of this repo and extract it:

     ```bash
     $ wget https://github.com/feryardiant/bakaigniter/archive/master.tar.gz -O - | tar xz
     ```

   * **Download using curl** archive of this repo and extract it:

     ```bash
     $ curl -L https://github.com/feryardiant/bakaigniter/archive/master.tar.gz | tar xz
     ```

3. **Import sample tables** from `database.sql` into your database:

   ```bash
   $ cd bakaigniter
   $ mysql -u{username} [-p{password}] {database} < database.sql
   ```

4. **Recognise it** by edit `APPPATH/config/autoload.php` file:

   ```php
   $autoload['packages'] = array(APPPATH.'third_party/bakaigniter');
   ```

5. **Autoload nessesary files**:

   ```php
   // Libraries
    $autoload['libraries'] = array(
        'database',                               // Required!
        'ignite',                                 // Required!
        );

    // Helpers
    $autoload['helper'] = array(
        'common',                                 // Required!
        'url',                                    // Required!
        'date',                                   // Required!
        'array',                                  // Optional!
        'data',                                   // Optional!
        );

    // Configs
    $autoload['config'] = array(
        'bakaigniter',                            // Required!
        'lang_codes',                             // Optional!
        );

    // Language
    $autoload['language'] = array('bakaigniter'); // Required!
   ```

6. **Done!**

## Credits

+ [Codeigniter](http://ellislab.com/codeigniter)
+ [CI Tank Auth Enchance (modified)](http://github.com/TankAuth/Tank-Auth/tree/enchance)
+ [Cool PHP Captcha](https://code.google.com/p/cool-php-captcha/)
+ [Google ReCaptcha (optional)](http://recaptcha.net/plugins/php/)

## Copyright and license

**Various trademarks and licenses held by their respective owners.**