<?php

use CarbonPHP\Application;
use CarbonPHP\CarbonPHP;
use CarbonPHP\Interfaces\iConfig;
use CarbonPHP\Rest;
use CarbonPHP\Tables\Carbons;
use DropInGaming\DropVariables;
use DropInGaming\PHP\Tables\Dig_Wallet_Transactions;

const DS = DIRECTORY_SEPARATOR;


// Composer autoload
if (false === (include 'vendor' . DS . 'autoload.php')) {

    print '<h1>Composer Failed</h1>';

    die(1);

}

(new CarbonPHP(new class extends Application implements iConfig {
        /**
         * @inheritDoc
         */
        public function startApplication(string $uri): bool
        {

            if (Rest::MatchRestfulRequests($this, '', Carbons::CLASS_NAMESPACE)()) {

                return true;

            }


            return $this->regexMatch('#home#i', static function () {

                print '<h1>Hello World! My name is ' . ucfirst(trim(`whoami`)) . '.</h1>';

            })();

        }

        public function defaultRoute() : void
        {
            print <<<HTML
                <html>
                <head><title>[C6] Hello World - No Route Matched</title></head>
                <body><h1>Country roads, take me <a href="/home">home</a></h1></body>
                </html>
                HTML;
        }

        public static function configuration(): array
        {

            if (!defined('DB_HOST')) {

                $config_file = CarbonPHP::$app_root . 'wp-config.php';

                if (file_exists($config_file)) {

                    define('SKIP_REQUIRE_WP_SETTINGS_FIRST_PASS', true);

                    require_once $config_file;

                }

            }

            return [
                CarbonPHP::SOCKET => [
                    CarbonPHP::PORT => SOCKET_PORT,    // the ladder would case when boot-strapping server setup on aws invocation stating at dig.php
                ],
                // ERRORS on point
                CarbonPHP::ERROR => [
                    CarbonPHP::LOCATION => CarbonPHP::$app_root . 'logs' . DS,
                    CarbonPHP::LEVEL => E_ALL | E_USER_DEPRECATED | E_DEPRECATED | E_RECOVERABLE_ERROR | E_STRICT
                        | E_USER_NOTICE | E_USER_WARNING | E_USER_ERROR | E_COMPILE_WARNING | E_COMPILE_ERROR
                        | E_CORE_WARNING | E_CORE_ERROR | E_NOTICE | E_PARSE | E_WARNING | E_ERROR,  // php ini level
                    CarbonPHP::STORE => false,      // Database if specified and / or File 'LOCATION' in your system
                    CarbonPHP::SHOW => true,       // Show errors on browser
                    CarbonPHP::FULL => true        // Generate custom stacktrace will high detail - DO NOT set to TRUE in PRODUCTION
                ],
                CarbonPHP::REST => [
                    // This section has a recursion property, as the generated data is input for its program
                    CarbonPHP::NAMESPACE => Dig_Wallet_Transactions::CLASS_NAMESPACE,
                    CarbonPHP::TABLE_PREFIX => Dig_Wallet_Transactions::TABLE_PREFIX
                ],
                CarbonPHP::DATABASE => [
                    CarbonPHP::DB_HOST => DB_HOST,
                    CarbonPHP::DB_PORT => '', //3306
                    CarbonPHP::DB_NAME => DB_NAME,
                    CarbonPHP::DB_USER => DB_USER,
                    CarbonPHP::DB_PASS => DB_PASSWORD,
                ],
                CarbonPHP::SESSION => [
                    CarbonPHP::REMOTE => true,  // Store the session in the SQL database
                ],

                CarbonPHP::SITE => [
                    CarbonPHP::URL => '', // todo - this should be changed back :: CarbonPHP::$app_local ? '127.0.0.1:8080' : basename(CarbonPHP::$app_root),    /* Evaluated and if not the accurate Redirect. Local php server okay. Remove for any domain */
                    CarbonPHP::ROOT => CarbonPHP::$app_root,
                    CarbonPHP::CACHE_CONTROL => [
                        'ico|pdf|flv' => 'Cache-Control: max-age=29030400, public',
                        'jpg|jpeg|png|gif|swf|xml|txt|css|woff2|tff|ttf|svg' => 'Cache-Control: max-age=604800, public',
                        'html|htm|hbs|js|json|map' => 'Cache-Control: max-age=0, private, public',
                    ],
                    CarbonPHP::CONFIG => __FILE__,
                    CarbonPHP::IP_TEST => false,
                    CarbonPHP::HTTP => true,
                ],
                /** Typically this is active, but we need it to run very specifically
                 *  where it doesn't handle error outside our DIG runtime. This does mean our code will run outside
                 *  what IMHO is a better error handler, but this is inevitable. The idea that it will run during most DIG
                 *  execution is wonderful. Such is made so manually at  self::start(...)
                 *
                 * 'ERROR' => [
                 * 'LOCATION' => CarbonPHP::$app_root . 'logs' . DS,
                 * 'LEVEL' => 0,
                 * 'STORE' => false,
                 * 'SHOW' => CarbonPHP::$app_local,
                 * 'FULL' => CarbonPHP::$app_local
                 * ],
                 ***/

                CarbonPHP::VIEW => [
                    CarbonPHP::VIEW => 'client/',
                ],
            ];
        }
    }
))();

return true;