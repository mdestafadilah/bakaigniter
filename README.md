# Baka Igniter 0.1.4

Yet another Codeigniter Started Package that used on my projects and licensed under [DBAD-license](http://dbad-license.org).

## Authors

**[Fery Wardiyanto](http://github.com/feryardiant)**

## CAUTION!

### THIS APP IS UNDER INTERNAL DEVELOPMENT ONLY AND USE IT WITH YOUR OWN RISK!!

### Structure of Baka Igniter

```
bakaigniter/
├─ config/
│   └─ bakaigniter.php                   # Configuration File
├─ core_sample/                          # Core Class as Sample,
│   ├─ BAKA_Controller.php               # BAKA_Controller Class
│   ├─ BAKA_Exception.php                # BAKA_Exception Class
│   └─ BAKA_Loader.php                   # BAKA_Loader Class
├─ helpers/
│   ├─ array_helper.php                  # Helper for array uses
│   ├─ asssets_helper.php                # Helper for Asssets Library
│   ├─ common_helper.php                 # Helper for commonly used functions
│   ├─ data_helper.php                   # Helper for data uses
│   ├─ emailer_helper.php                # Helper for emailer
│   ├─ former_helper.php                 # Helper for Former Library
│   ├─ themee_helper.php                 # Helper for Themee Library
│   ├─ twbs_helper.php                   # Helper for Twitter Bootstrap
│   └─ authr_helper.php                  # Helper for Authr Library
├─ hooks_sample/
│   └─ bakaigniter.php                   # Sample hooks for Bakaigniter
├─ language/
│   └─ indonesian/
│   │   └─ bakaigniter_lang.php          # Bakaigniter Language file
└─ libraries/
    ├─ Archive/
    │   ├─ drivers/
    │   │   └─ Archive_zip.php           # Zip Driver
    │   └─ Archive.php                   # Archive Driver
    ├─ Authr/
    │   ├─ drivers/
    │   │   ├─ Authr_autologin.php       # Autologin Driver
    │   │   ├─ Authr_login_attempt.php   # Login_attempt Driver
    │   │   ├─ Authr_permissions.php     # Permissions Driver
    │   │   ├─ Authr_role_perms.php      # Role_perms Driver
    │   │   ├─ Authr_roles.php           # Roles Driver
    │   │   ├─ Authr_user_log.php        # User_log Driver
    │   │   ├─ Authr_user_meta.php       # User_meta Driver
    │   │   ├─ Authr_user_perms.php      # User_perms Driver
    │   │   ├─ Authr_user_roles.php      # User_roles Driver
    │   │   └─ Authr_users.php           # Users Driver
    │   └─ Authr.php                     # Authr
    ├─ BAKA_Form_validation_sample.php   # BAKA_Form_validation Sample
    ├─ Asssets.php                       # Asssets Class Library
    ├─ Former.php                        # Former Class Library
    ├─ Gridr.php                         # Gridr Class Library
    ├─ Median.php                        # Median Class Library
    ├─ Messg.php                         # Messg Class Library
    ├─ Setting.php                       # Setting Class Library
    ├─ Themee.php                        # Themee Class Library
    └─ Utily.php                         # Utily Class Library
```

## Installation

1. **Move to** `third_party` folder:

   ```bash
   $ cd APPPATH/third_party
   ```

2. **Download it**

    2a. **Clone this repo** into your:

        ```bash
        $ git clone git@github.com:feryardiant/bakaigniter.git
        ```

    2b. **Use it as Submodule** into your:

        ```bash
        $ git submodule add git@github.com:feryardiant/bakaigniter.git bakaigniter
        ```

    2c. **Download using wget** archive of this repo and extract it:

        ```bash
        $ wget https://github.com/feryardiant/bakaigniter/archive/master.tar.gz -O - | tar xz
        ```

    2d. **Download using curl** archive of this repo and extract it:

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