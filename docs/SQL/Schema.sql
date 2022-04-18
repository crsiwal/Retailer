CREATE TABLE prefix_users (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    user_type_id smallint unsigned NOT NULL COMMENT 'Type of the user account',
    user_role_id smallint unsigned NOT NULL COMMENT 'Which specific role assigned to user based on account type.',
    status_id tinyint unsigned NOT NULL COMMENT 'The status of user account',
    phone_number varchar(15) NOT NULL COMMENT 'Registered phone number of the user',
    phone_verify tinyint(1) NOT NULL DEFAULT 0 COMMENT 'User Phone Number is verified via OTP or not.',
    email_id varchar(128) NOT NULL COMMENT 'Registered email id of the user',
    email_verify tinyint(1) NOT NULL DEFAULT 0 COMMENT 'User email id is verified via OTP or not.',
    username varchar(32) NOT NULL COMMENT 'Unique selected user name for login',
    password varchar(128) NOT NULL DEFAULT '' COMMENT 'A password for secure login',
    update_time datetime DEFAULT NULL COMMENT 'When user details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_users_meta (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    user_id bigint unsigned NOT NULL COMMENT 'User Unique id',
    gender_id tinyint(1) NOT NULL COMMENT 'User Gender Type ID',
    vocal_language_id smallint unsigned NOT NULL COMMENT 'Spoken language ID',
    by_user_id smallint unsigned NOT NULL COMMENT 'Unique Id of user who added this user',
    first_name varchar(15) NOT NULL COMMENT 'First name of user',
    middle_name varchar(15) NOT NULL DEFAULT '' COMMENT 'Middle name of user',
    family_name varchar(15) NOT NULL COMMENT 'Family name of user',
    dob_date tinyint unsigned NOT NULL DEFAULT 1 COMMENT 'User Date of Birth Date',
    dob_month tinyint unsigned NOT NULL DEFAULT 1 COMMENT 'User Date of Birth Month',
    dob_year tinyint unsigned NOT NULL DEFAULT 1970 COMMENT 'User Date of Birth Year',
    created_time datetime NOT NULL COMMENT 'When user added to system',
    update_time datetime DEFAULT NULL COMMENT 'When user profile details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_users_active (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    user_id bigint unsigned NOT NULL COMMENT 'User Unique id',
    name varchar(128) NOT NULL DEFAULT '' COMMENT 'Full name of the user which will display',
    icon_url varchar(1024) NOT NULL DEFAULT '' COMMENT 'User thumbnail url. By default will be user first name char image.',
    language_id smallint unsigned NOT NULL COMMENT 'User selects primary language for comunicate',
    last_login_time datetime DEFAULT NULL COMMENT 'When user last login to system',
    last_active_time datetime DEFAULT NULL COMMENT 'When user active last time',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_gender(
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    by_user_id bigint unsigned NOT NULL COMMENT 'User Unique id',
    label varchar(128) NOT NULL COMMENT 'Gender label',
    created_time datetime NOT NULL COMMENT 'When added to system',
    update_time datetime DEFAULT NULL COMMENT 'When details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_user_status(
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    by_user_id bigint unsigned NOT NULL COMMENT 'User Unique id',
    label varchar(128) NOT NULL COMMENT 'User Status Label',
    created_time datetime NOT NULL COMMENT 'When added to system',
    update_time datetime DEFAULT NULL COMMENT 'When details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_location(
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    country_id bigint unsigned NOT NULL COMMENT 'Country Primary Id',
    region_id smallint NOT NULL DEFAULT '' COMMENT 'Region/State Primary Id',
    city_id smallint NOT NULL DEFAULT '' COMMENT 'City Primary Id',
    postal_code_id smallint NOT NULL DEFAULT '' COMMENT 'Postal Code Primary Id',
    created_time datetime NOT NULL COMMENT 'When added to System',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_countries(
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    currency_id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Currency Primary id',
    by_user_id bigint unsigned NOT NULL COMMENT 'User Primary id',
    label varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    iso_two varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    iso_three varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    num_iso varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    isd varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    is_active varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
	created_time datetime NOT NULL COMMENT 'When added to system',
    update_time datetime DEFAULT NULL COMMENT 'When details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_regions (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    country_id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Primary id',
    by_user_id bigint unsigned NOT NULL COMMENT 'User Primary id',
    label varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    iso_two varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    iso_three varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    num_iso varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    isd varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
    is_active varchar(128) NOT NULL DEFAULT '' COMMENT 'User Status Label',
	created_time datetime NOT NULL COMMENT 'When added to system',
    update_time datetime DEFAULT NULL COMMENT 'When details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_regions_neighbor(
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    by_user_id bigint unsigned NOT NULL COMMENT 'User Primary id',
    region_id bigint unsigned NOT NULL COMMENT 'Region Primary id',
    neighbor_region_id bigint unsigned NOT NULL COMMENT 'Neighbor Primary id',
	created_time datetime NOT NULL COMMENT 'When added to system',
    update_time datetime DEFAULT NULL COMMENT 'When details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

CREATE TABLE prefix_city () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;




CREATE TABLE prefix_user_type () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_user_role () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_access_groups () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_feature_access () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_role_permission () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_language () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_config_items () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_category () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_tags () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_currency () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_variations () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_stores () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_store_user_role () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_store_variations () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_products () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_product_addon_categories () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_product_variations () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_product_stock () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_orders () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_store_role () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_store_location () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_postal_codes () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_timezone () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_config_groups () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
CREATE TABLE prefix_location () ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;


