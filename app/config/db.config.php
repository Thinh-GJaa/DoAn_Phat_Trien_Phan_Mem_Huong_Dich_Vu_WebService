<?php
/**
 * Define database credentials
 */
define("DB_HOST", "localhost"); 
define("DB_NAME", "moneypro2"); 
define("DB_USER", "root"); 
define("DB_PASS", ""); 
define("DB_ENCODING", "utf8"); // DB connnection charset


/**
 * Define DB tables
 */
define("TABLE_PREFIX", "mp_");

// Set table names without prefix
define("TABLE_USERS", "users");
define("TABLE_ACCOUNTS", "accounts");
define("TABLE_GENERAL_DATA", "general_data");
define("TABLE_OPTIONS", "options");
define("TABLE_CATEGORIES", "categories");

define("TABLE_BUDGETS", "budgets");
define("TABLE_TRANSACTIONS", "transactions");
define("TABLE_GOALS", "goals");
define("TABLE_NOTIFICATIONS", "notifications");

