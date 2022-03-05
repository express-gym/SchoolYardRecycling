<?php

namespace Recycling;

// Restful defaults
use CarbonPHP\Helpers\RestfulValidations;
use CarbonPHP\Rest;
use CarbonPHP\Interfaces\iRestNoPrimaryKey;
use PDO;

// Custom User Imports


/**
 *
 * Class Carbon_History_Logs
 * @package Recycling
 * @note Note for convenience, a flag '-prefix' maybe passed to remove table prefixes.
 *  Use '-help' for a full list of options.
 * @link https://carbonphp.com/ 
 *
 * This class contains autogenerated code.
 * This class is a 1=1 relation named after a table in the database schema provided to the program `RestBuilder`.
 * Your edits are preserved during updates given they follow::
 *      NEW METHODS SHOULD ONLY BE STATIC and may be reordered during generation.
 *      FUNCTIONS MUST NOT EXIST outside the class. (methods and functions are not the same.)
 *      IMPORTED CLASSED AND FUNCTIONS ARE ALLOWED though maybe reordered.
 *      ADDITIONAL CONSTANTS of any kind ARE NOT ALLOWED.
 *      ADDITIONAL CLASS MEMBER VARIABLES are NOT ALLOWED.
 *
 * When creating static member functions which require persistent variables, consider making them static members of that 
 *  static method.
 */
class Carbon_History_Logs extends Rest implements iRestNoPrimaryKey
{
    use RestfulValidations;
    
    public const CLASS_NAME = 'Carbon_History_Logs';
    
    public const CLASS_NAMESPACE = 'Recycling\\';
    
    public const TABLE_NAME = 'recycling_carbon_history_logs';
    
    public const TABLE_PREFIX = 'recycling_';
    
    public const DIRECTORY = __DIR__ . DIRECTORY_SEPARATOR;
    
    public const VERBOSE_LOGGING = false;
    
    public const QUERY_WITH_DATABASE = true;
    
    public const DATABASE = 'Recycling';
    
    public const JSON_COLUMNS = ['history_data',];
    
    // Tables we have a foreign key reffrence to
    public const INTERNAL_TABLE_CONSTRAINTS = [
    ];
    
    // Tables that reference this tables columns via FK
    public const EXTERNAL_TABLE_CONSTRAINTS = [
    ];

    /** VALIDATE_AFTER_REBUILD
     * If set to true, after running the REFRESH_SCHEMA the sql generated by a mysql dump should match, otherwise an 
     * error will be thrown. Set this to false if the table being generated is 3rd party, such as wordpress internals.
     * [C6] Internal tables will never be validated using restful generated files, outside the library, despite this setting. 
     * @note this constant can be modified and will presist after rebuild.
    **/
    public const VALIDATE_AFTER_REBUILD = true;
  
    /**
     * COLUMNS
     * The columns below are a 1=1 mapping to the columns found in recycling_carbon_history_logs. 
     * Changes, such as adding or removing a column, MAY be made first in the database. The ResitBuilder program will 
     * capture any changes made in MySQL and update this file auto-magically. If you work in a team it is RECOMMENDED to
     * programmatically make these changes using the REFRESH_SCHEMA constant below.
    **/
    public const HISTORY_UUID = 'recycling_carbon_history_logs.history_uuid'; 

    public const HISTORY_TABLE = 'recycling_carbon_history_logs.history_table'; 

    public const HISTORY_TYPE = 'recycling_carbon_history_logs.history_type'; 

    public const HISTORY_DATA = 'recycling_carbon_history_logs.history_data'; 

    public const HISTORY_ORIGINAL_QUERY = 'recycling_carbon_history_logs.history_original_query'; 

    public const HISTORY_TIME = 'recycling_carbon_history_logs.history_time'; 

    /**
     * COLUMNS
     * Interfacing with the restful return can be done using objects which allow your editor to smartly type fields.
     * The referenced return &$return from any Rest::Get method can be directly passed back into its calling classes 
     *  constructor. One might use these fields below with the following ::
     *
     *    public Carbon_History_Logs $recycling_carbon_history_logs;
     *
     * The definition above can be defined with the following ::
     *
     *    $recycling_carbon_history_logs = new Carbon_History_Logs($return);
     *
     * @note this method is unnecessary and should be avoided if not needed for clarity of clean code. 
    **/
    public string $history_uuid;

    public string $history_table;

    public string $history_type;

    public array $history_data;

    public string $history_original_query;

    public string $history_time;
    
    /**
     * PRIMARY
     * This could be null for tables without primary key(s), a string for tables with a single primary key, or an array 
     * given composite primary keys. The existence and amount of primary keys of the will also determine the interface 
     * aka method signatures used.
    **/
    public const PRIMARY = null;

    /**
     * AUTO_INCREMENT_PRIMARY_KEY
     * Post requests will return the new primary key.
     * Caution: auto incrementing columns are considered bad practice in MySQL Sharded system. This is an
     * advanced configuration, so if you don't know what it means you can probably ignore this. CarbonPHP is designed to
     * manage your primary keys through a mysql generated UUID entity system. Consider turning your primary keys into 
     * foreign keys which reference $prefix . 'carbon_carbons.entity_pk'. More on why this is effective at 
     * @link https://www.carbonPHP.com
    **/
    public const AUTO_INCREMENT_PRIMARY_KEY = false;
        
    /**
     * CARBON_CARBONS_PRIMARY_KEY
     * does your table reference $prefix . 'carbon_carbons.entity_pk'
    **/
    public const CARBON_CARBONS_PRIMARY_KEY = false;
    
    /**
     * COLUMNS
     * This is a convenience constant for accessing your data after it has be returned from a rest operation. It is needed
     * as Mysql will strip away the table name we have explicitly provided to each column (to help with join statments).
     * Thus, accessing your return values might look something like:
     *      $return[self::COLUMNS[self::EXAMPLE_COLUMN_ONE]]
    **/ 
    public const COLUMNS = [
        self::HISTORY_UUID => 'history_uuid',
        self::HISTORY_TABLE => 'history_table',
        self::HISTORY_TYPE => 'history_type',
        self::HISTORY_DATA => 'history_data',
        self::HISTORY_ORIGINAL_QUERY => 'history_original_query',
        self::HISTORY_TIME => 'history_time',
    ];
    
    /**
     * PDO_VALIDATION
     * This is automatically generated. Modify your mysql table directly and rerun RestBuilder to see changes.
    **/
    public const PDO_VALIDATION = [
        self::HISTORY_UUID => [self::MYSQL_TYPE => 'binary', self::PDO_TYPE => PDO::PARAM_STR, self::MAX_LENGTH => '16', self::AUTO_INCREMENT => false, self::SKIP_COLUMN_IN_POST => false],
        self::HISTORY_TABLE => [self::MYSQL_TYPE => 'varchar', self::PDO_TYPE => PDO::PARAM_STR, self::MAX_LENGTH => '255', self::AUTO_INCREMENT => false, self::SKIP_COLUMN_IN_POST => false, self::DEFAULT_POST_VALUE => null],
        self::HISTORY_TYPE => [self::MYSQL_TYPE => 'varchar', self::PDO_TYPE => PDO::PARAM_STR, self::MAX_LENGTH => '20', self::AUTO_INCREMENT => false, self::SKIP_COLUMN_IN_POST => false, self::DEFAULT_POST_VALUE => null],
        self::HISTORY_DATA => [self::MYSQL_TYPE => 'json', self::PDO_TYPE => PDO::PARAM_STR, self::MAX_LENGTH => '', self::AUTO_INCREMENT => false, self::SKIP_COLUMN_IN_POST => false, self::DEFAULT_POST_VALUE => null],
        self::HISTORY_ORIGINAL_QUERY => [self::MYSQL_TYPE => 'varchar', self::PDO_TYPE => PDO::PARAM_STR, self::MAX_LENGTH => '1024', self::AUTO_INCREMENT => false, self::SKIP_COLUMN_IN_POST => false, self::DEFAULT_POST_VALUE => null],
        self::HISTORY_TIME => [self::MYSQL_TYPE => 'datetime', self::PDO_TYPE => PDO::PARAM_STR, self::MAX_LENGTH => '', self::AUTO_INCREMENT => false, self::SKIP_COLUMN_IN_POST => true, self::DEFAULT_POST_VALUE => self::CURRENT_TIMESTAMP],
    ];
     
    /**
     * REFRESH_SCHEMA
     * These directives should be designed to maintain and update your team's schema &| database &| table over time. 
     * It is RECOMMENDED that ALL changes you make in your local env be programmatically coded out in callables such as 
     * the 'tableExistsOrExecuteSQL' method call below. If a PDO exception is thrown with `$e->getCode()` equal to 42S02 
     * or 1049 CarbonPHP will attempt to REFRESH the full database with with all directives in all tables. If possible 
     * keep table specific procedures in it's respective restful-class table file. Check out the 'tableExistsOrExecuteSQL' 
     * method in the parent class to see a more abstract procedure.
     * Each directive MUST be designed to run multiple times without failure.
     * @defaults
     *   public const REFRESH_SCHEMA = [
     *        [self::class => 'buildMysqlHistoryTrigger', self::class]
     *   ];
     *
     *
     * Hint: the following may be uncommented and used to allow explicitly referencing methods with callbacks. No 
     * parameters will be passed to the callbacks. The refrencing style above will also be respected in this array. The
     * example callables maybe removed. 
     *
     *    public function __construct(array &$return = [])
     *    {
     *        parent::__construct($return);
     *        
     *        $this->REFRESH_SCHEMA = [
     *            static fn() => self::execute('ALTER TABLE mytbl ALTER j SET DEFAULT 1000;'),
     *            static fn() => self::execute('ALTER TABLE mytbl ALTER k DROP DEFAULT;'),
     *            static fn() => self::buildMysqlHistoryTrigger(self::TABLE_NAME),
     *            static fn() => self::columnExistsOrExecuteSQL(self::COLUMNS[self::MODIFIED], self::TABLE_NAME,
     *                  'alter table '.self::TABLE_NAME.' add '.self::COLUMNS[self::MODIFIED].' DATETIME default CURRENT_TIMESTAMP;'),
     *        ];
     *    }
     *
     */
    public array $REFRESH_SCHEMA = [];
     

    public const REFRESH_SCHEMA = [
        [self::class => 'buildMysqlHistoryTrigger', self::class]
    ];
    
    /** Custom User Methods Are Placed Here **/
    

   
    /**
     * REGEX_VALIDATION
     * Regular Expression validations will run before and recommended over PHP_VALIDATION.
     * It is a 1 to 1 column regex relation with fully regex for preg_match_all(). This regex must satisfy the condition 
     *        1 > preg_match_all(self::$compiled_regex_validations[$column], $value, ...
     * 
     * Table generated column constants must be used. 
     *       self::EXAMPLE_COLUMN_NAME => '#^[A-F0-9]{20,35}$#i'
     *
     * @link https://regexr.com
     * @link https://php.net/manual/en/function.preg-match-all.php
     */
    public const REGEX_VALIDATION = []; 
     
     
    /**
     * PHP_VALIDATION
     * PHP validations works as follows:
     * @note regex validation is always step #1 and should be favored over php validations.
     *  Syntax ::
     *      [Example_Class::class => 'disallowPublicAccess', (optional) ...$rest]
     *      self::EXAMPLE_COLUMN => [Example_Class::class => 'exampleOtherMethod', (optional) ...$rest]
     *
     *  Callables defined above MUST NOT RETURN FALSE. Moreover; return values are ignored so `): void {` may be used. 
     *  array_key_first() must return a fully qualified class namespace. In the example above Example_Class would be a
     *  class defined in our system. PHP's `::class` appended to the end will return the fully qualified namespace. Note
     *  this will require the custom import added to the top of the file. You can allow your editor to add these for you
     *  as the RestBuilder program will capture, preserve, and possibly reorder the imports. The value of the first key 
     *  MUST BE the exact name of a member-method of that class. Typically validations are defined in the same class 
     *  they are used ('self::class') though it is useful to export more dynamic functions. The $rest variable can be 
     *  used to add additional arguments to the request. RESTFUL INTERNAL ARGUMENTS will be passed before any use defined
     *  variables after the first key value pair. Only array values will be passed to the method. Thus, additional keys 
     *  listed in the array will be ignored. Take for example::
     *
     *      [ self::class => 'validateUnique', self::class, self::EXAMPLE_COLUMN]
     *  The above is defined in RestfulValidations::class. 
     *      RestfulValidations::validateUnique(string $columnValue, string $className, string $columnName)
     *  Its definition is with a trait this classes inherits using `use` just after the `class` keyword. 
     * 
     *   What is the RESTFUL lifecycle?
     *      Regex validations are done first on any main query; sub-queries are treated like callbacks which get run 
     *      during the main queries invocation. The main query is 'paused' while the sub-query will compile and validate.
     *      Validations across tables are concatenated on joins and sub-queries. All callbacks will be run across any 
     *       table joins.
     *      
     *   What are the RESTFUL INTERNAL ARGUMENTS? (The single $arg string or array passed before my own...)
     *      REST_REQUEST_PREPROCESS_CALLBACKS ::   
     *           PREPROCESS::
     *              Methods defined here will be called at the beginning of every request. 
     *              Each method will be passed ( & self::$REST_REQUEST_PARAMETERS ) by reference so changes can be made pre-request.
     *              Method validations under the main 'PREPROCESS' key will be run first, while validations specific to 
     *              ( GET | POST | PUT | DELETE )::PREPROCESS will be run directly after.
     *
     *           FINAL:: 
     *              Each method will be passed the final ( & $SQL ), which may be a sub-query, by reference.
     *              Modifying the SQL string will effect the parent function. This can have disastrous effects.
     *
     *           COLUMN::
     *              Preformed while a column is being parsed in a query. The first column validations to run.
     *              Each column specific method under PREPROCESS will be passed nothing from rest. 
     *              Each method will ONLY be RUN ONCE regardless of how many times the column has been seen. 
     *
     *      COLUMN::
     *           Column validations are only run when they have been parsed in the query. Global column validations maybe
     *            RUN MULTIPLE TIMES if the column is used multiple times in a single restful query. 
     *           If you have a column that is used multiple times the validations will run for each occurrence.
     *           Column validation can mean many thing. There are three possible scenarios in which your method 
     *            signature would change. For this reason it is more common to use method ( GET | POST ... ) wise column validations.
     *              *The signature required are as follows:
     *                  Should the column be...
     *                      SELECTED:  
     *                          In a select stmt no additional parameters will be passed.
     *                      
     *                      ORDERED BY: (self::ASC | self::DESC)
     *                          The $operator will be passed to the method.
     *  
     *                      JOIN STMT:
     *                          The $operator followed by the $value will be passed. 
     *                          The operator could be :: >,<,<=,<,=,<>,=,<=>
     *
     *      REST_REQUEST_FINNISH_CALLBACKS::
     *          PREPROCESS::
     *              These callbacks are called after a successful PDOStatement->execute() but before Database::commit().
     *              Each method will be passed ( GET => &$return, DELETE => &$remove, PUT => &$returnUpdated ) by reference. 
     *              POST will BE PASSED NULL.          
     *
     *          FINAL::
     *              Run directly after method specific [FINAL] callbacks.
     *              The final, 'final' callback set. After these run rest will return. 
     *              Each method will be passed ( GET => &$return, DELETE => &$remove, PUT => &$returnUpdated ) by reference. 
     *              POST will BE PASSED NULL. 
     *
     *          COLUMN::
     *              These callables will be run after the [( GET | POST | PUT | DELETE )][FINAL] methods.
     *              Directly after, the [REST_REQUEST_FINNISH_CALLBACKS][FINAL] will run. 
     *              
     *
     *      (POST|GET|PUT|DELETE)::
     *          PREPROCESS::
     *              Methods run after any root 'REST_REQUEST_PREPROCESS_CALLBACKS'
     *              Each method will not be passed any argument from system. User arguments will be directly reflected.
     *
     *          COLUMN::
     *              Methods run after any root column validations, the last of the PREPROCESS column validations to run.
     *              Based on the existences and number of primary key(s), the signature will change. 
     *               See the notes on the base column validations as signature of parameters may change. 
     *              It is not possible to directly define a method->column specific post processes. This can be done by
     *               dynamically pairing multiple method processes starting with one here which signals a code routine 
     *               in a `finial`-ly defined method. The FINAL block specific to the method would suffice. 
     *
     *          FINAL::
     *              Passed the ( & $return )  
     *              Run before any other column validation 
     *
     *  Be aware the const: self::DISALLOW_PUBLIC_ACCESS = [self::class => 'disallowPublicAccess'];
     *  could be used to replace each occurrence of 
     *          [self::class => 'disallowPublicAccess', self::class]
     *  though would loose information as self::class is a dynamic variable which must be used in this class given 
     *  static and constant context. 
     *  @default   
     *      public const PHP_VALIDATION = [ 
     *          self::REST_REQUEST_PREPROCESS_CALLBACKS => [ 
     *              self::PREPROCESS => [ 
     *                  [self::class => 'disallowPublicAccess', self::class],
     *              ]
     *          ],
     *          self::GET => [ 
     *              self::PREPROCESS => [ 
     *                  [self::class => 'disallowPublicAccess', self::class],
     *              ],
     *              self::HISTORY_UUID => [
     *                  [self::class => 'disallowPublicAccess', self::HISTORY_UUID]
     *              ],
     *              self::HISTORY_TABLE => [
     *                  [self::class => 'disallowPublicAccess', self::HISTORY_TABLE]
     *              ],
     *              self::HISTORY_TYPE => [
     *                  [self::class => 'disallowPublicAccess', self::HISTORY_TYPE]
     *              ],
     *              self::HISTORY_DATA => [
     *                  [self::class => 'disallowPublicAccess', self::HISTORY_DATA]
     *              ],
     *              self::HISTORY_ORIGINAL_QUERY => [
     *                  [self::class => 'disallowPublicAccess', self::HISTORY_ORIGINAL_QUERY]
     *              ],
     *              self::HISTORY_TIME => [
     *                  [self::class => 'disallowPublicAccess', self::HISTORY_TIME]
     *              ],
     *          ],    
     *          self::POST => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]],    
     *          self::PUT => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]],    
     *          self::DELETE => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]],
     *          self::REST_REQUEST_FINNISH_CALLBACKS => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]]    
     *      ];
     *  @note you can remove the constant entirely and re-run rest builder to reset the default.
     *  @version ^9
     */ 
    public const PHP_VALIDATION = [ 
        self::REST_REQUEST_PREPROCESS_CALLBACKS => [ 
            self::PREPROCESS => [ 
                [self::class => 'disallowPublicAccess', self::class],
            ]
        ],
        self::GET => [ 
            self::PREPROCESS => [ 
                [self::class => 'disallowPublicAccess', self::class],
            ],
            self::HISTORY_UUID => [
                [self::class => 'disallowPublicAccess', self::HISTORY_UUID]
            ],
            self::HISTORY_TABLE => [
                [self::class => 'disallowPublicAccess', self::HISTORY_TABLE]
            ],
            self::HISTORY_TYPE => [
                [self::class => 'disallowPublicAccess', self::HISTORY_TYPE]
            ],
            self::HISTORY_DATA => [
                [self::class => 'disallowPublicAccess', self::HISTORY_DATA]
            ],
            self::HISTORY_ORIGINAL_QUERY => [
                [self::class => 'disallowPublicAccess', self::HISTORY_ORIGINAL_QUERY]
            ],
            self::HISTORY_TIME => [
                [self::class => 'disallowPublicAccess', self::HISTORY_TIME]
            ],
        ],    
        self::POST => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]],    
        self::PUT => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]],    
        self::DELETE => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]],
        self::REST_REQUEST_FINNISH_CALLBACKS => [ self::PREPROCESS => [[ self::class => 'disallowPublicAccess', self::class ]]]    
    ]; 
   
    /**
     * CREATE_TABLE_SQL is autogenerated and should not be manually updated. Make changes in MySQL and regenerate using
     * the RestBuilder program.
     */
    public const CREATE_TABLE_SQL = /** @lang MySQL */ <<<MYSQL
CREATE TABLE IF NOT EXISTS `recycling_carbon_history_logs` (
`history_uuid` binary(16) NOT NULL,
`history_table` varchar(255) DEFAULT NULL,
`history_type` varchar(20) DEFAULT NULL,
`history_data` json DEFAULT NULL,
`history_original_query` varchar(1024) DEFAULT NULL,
`history_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;
MYSQL;
       
   /**
    * Please refrence these notes for the `get` method.
    * Nested aggregation is not currently supported. It is recommended to avoid using 'AS' where possible. Sub-selects are 
    * allowed and do support 'as' aggregation. Refer to the static subSelect method parameters in the parent `Rest` class.
    * All supported aggregation is listed in the example below. Note while the WHERE and JOIN members are syntactically 
    * similar, and are moreover compiled through the same method, our aggregation is not. Please refer to this example 
    * when building your queries. In many cases sub-selects can be replaces using simple joins, this is highly recommended.
    *
    *   $argv = [
    *       Rest::SELECT => [
    *              'table_name.column_name',                            // bad, dont pass strings manually. Use Table Constants instead.
    *              self::EXAMPLE_COLUMN_ONE,                            // good, 
    *              [self::EXAMPLE_COLUMN_TWO, Rest::AS, 'customName'],
    *              [Rest::COUNT, self::EXAMPLE_COLUMN_TWO, 'custom_return_name_using_as'],
    *              [Rest::GROUP_CONCAT, self::EXAMPLE_COLUMN_THREE], 
    *              [Rest::MAX, self::EXAMPLE_COLUMN_FOUR], 
    *              [Rest::MIN, self::EXAMPLE_COLUMN_FIVE], 
    *              [Rest::SUM, self::EXAMPLE_COLUMN_SIX], 
    *              [Rest::DISTINCT, self::EXAMPLE_COLUMN_SEVEN], 
    *              ANOTHER_EXAMPLE_TABLE::subSelect($primary, $argv, $as, $pdo, $database)
    *       ],
    *       Rest::WHERE => [
    *              self::EXAMPLE_COLUMN_NINE => 'Value To Constrain',                       // self::EXAMPLE_COLUMN_NINE AND           
    *              'Defaults to boolean AND grouping' => 'Nesting array switches to OR',    // ''='' AND 
    *              [
    *                  'Column Name' => 'Value To Constrain',                                  // ''='' OR
    *                  'This array is OR'ed together' => 'Another sud array would `AND`'       // ''=''
    *                  [ etc... ]
    *              ],
    *              'last' => 'whereExample'                                                  // AND '' = ''
    *        ],
    *        Rest::JOIN => [
    *            Rest::INNER => [
    *                Carbon_Users::CLASS_NAME => [
    *                    'Column Name' => 'Value To Constrain',
    *                    'Defaults to AND' => 'Nesting array switches to OR',
    *                    [
    *                       'Column Name' => 'Value To Constrain',
    *                       'This array is OR'ed together' => 'value'
    *                       [ 'Another sud array would `AND`ed... ]
    *                    ],
    *                    [ 'Column Name', Rest::LESS_THAN, 'Another Column Name']           // NOTE the Rest::LESS_THAN
    *                ]
    *            ],
    *            Rest::LEFT_OUTER => [
    *                Example_Table::CLASS_NAME => [
    *                    Location::USER_ID => Users::ID,
    *                    Location_References::ENTITY_KEY => $custom_var,
    *                   
    *                ],
    *                Example_Table_Two::CLASS_NAME => [
    *                    Example_Table_Two::ID => Example_Table_Two::subSelect($primary, $argv, $as, $pdo, $database)
    *                    ect... 
    *                ]
    *            ]
    *        ],
    *        Rest::PAGINATION => [
    *              Rest::PAGE => (int) 0, // used for pagination which equates to 
    *                  // ... LIMIT ' . (($argv[self::PAGINATION][self::PAGE] - 1) * $argv[self::PAGINATION][self::LIMIT]) 
    *                  //       . ',' . $argv[self::PAGINATION][self::LIMIT];
    *              
    *              Rest::LIMIT => (int) 90, // The maximum number of rows to return,
    *                       setting the limit explicitly to 1 will return a key pair array of only the
    *                       singular result. SETTING THE LIMIT TO NULL WILL ALLOW INFINITE RESULTS (NO LIMIT).
    *                       The limit defaults to 100 by design.
    *
    *               Rest::ORDER => [self::EXAMPLE_COLUMN_TEN => Rest::ASC ],  // i.e.  'username' => Rest::DESC
    *         ],
    *   ];
    *
    *
    * @param array $return
    * @param array $argv
    * @generated
    * @return bool
    */
    public static function get(array &$return, array $argv = []): bool
    {
        return self::select($return, $argv);
    }

    /**
     * @param array $post - a one to one; column => value mapping. Multiple rows may be inserted at one time using an array of arrays.
     * @return bool|string
     * @generated
     */
    public static function post(array &$post = []): bool
    {   
        return self::insert($post);
    }
    
    /**
    * 
    * 
    *  Syntax should be as follows.
    *  $argv = [
    *       Rest::UPDATE => [
    *              ...
    *       ],
    *       Rest::WHERE => [
    *              ...
    *       ]
    * 
    * @param array $returnUpdated - will be merged with with array_merge, with a successful update. 
    
    * @param array $argv 
    * @generated
    * @return bool - if execute fails, false will be returned and $returnUpdated = $stmt->errorInfo(); 
    */
    public static function put(array &$returnUpdated,  array $argv = []) : bool
    {
        return self::updateReplace($returnUpdated, $argv);
    }

    /**
    * @param array $remove
    * @param array $argv
    * @generated
    * @return bool
    */
    public static function delete(array &$remove, array $argv = []) : bool
    {
        return self::remove($remove, $argv);
    }
    
}
