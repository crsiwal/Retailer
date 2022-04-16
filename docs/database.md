
## Database Tables

### Users ( User Profile )
```bash
CREATE TABLE prefix_users (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    phone_number varchar(15) NOT NULL DEFAULT '' COMMENT 'Registered phone number of the user',
    phone_verify tinyint(1) NOT NULL DEFAULT 0 COMMENT 'User Phone Number is verified via OTP or not.',
    email_id varchar(128) NOT NULL DEFAULT '' COMMENT 'Registered email id of the user',
    email_verify tinyint(1) NOT NULL DEFAULT 0 COMMENT 'User email id is verified via OTP or not.',
    username tinyint(32) unsigned NOT NULL DEFAULT 0 COMMENT 'Unique selected user name for login',
    password varchar(128) NOT NULL DEFAULT '' COMMENT 'A password for secure login',
    user_type_id smallint unsigned NOT NULL DEFAULT 0 COMMENT 'Type of the user account',
    user_role_id smallint unsigned NOT NULL DEFAULT 0 COMMENT 'Which specific role assigned to user based on account type.',
    status_id tinyint unsigned NOT NULL DEFAULT 0 COMMENT 'The status of user account',
    update_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
```

### User Meta ( User Profile )
```bash
CREATE TABLE prefix_users_meta (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    user_id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'User Unique auto increment id',
    first_name varchar(15) NOT NULL DEFAULT '' COMMENT 'First name of user',
    middle_name tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Middle name of user',
    family_name varchar(128) NOT NULL DEFAULT '' COMMENT 'Family name of user',
    gender_id tinyint(1) NOT NULL DEFAULT 0 COMMENT 'User Gender Type ID',
    dob_date tinyint(32) unsigned NOT NULL DEFAULT 0 COMMENT 'User Date of Birth Date',
    dob_month varchar(128) NOT NULL DEFAULT '' COMMENT 'User Date of Birth Month',
    dob_year smallint unsigned NOT NULL DEFAULT 0 COMMENT 'User Date of Birth Year',
    by_user_id smallint unsigned NOT NULL DEFAULT 0 COMMENT 'Unique Id of user who added this user',
    created_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user added to system',
    update_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user profile details updated',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
```

### User Active Data ( User Profile )
```bash
CREATE TABLE prefix_users_active (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    user_id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'User Unique auto increment id',
    name varchar(128) NOT NULL DEFAULT '' COMMENT 'Full name of the user which will display',
    icon_url varchar(1024) NOT NULL DEFAULT '' COMMENT 'User thumbnail url. By default will be user first name char image.',
    language_id smallint unsigned NOT NULL DEFAULT 0 COMMENT 'User selects primary language for comunicate',
    last_login_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user last login to system',
    last_active_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user active last time',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
```

### User Location ( User Profile )
```bash
CREATE TABLE prefix_user_location (
    id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique auto increment id',
    user_id bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'User Unique auto increment id',
    name varchar(128) NOT NULL DEFAULT '' COMMENT 'Full name of the user which will display',
    icon_url varchar(1024) NOT NULL DEFAULT '' COMMENT 'User thumbnail url. By default will be user first name char image.',
    language_id smallint unsigned NOT NULL DEFAULT 0 COMMENT 'User selects primary language for comunicate',
    last_login_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user last login to system',
    last_active_time datetime NOT NULL DEFAULT '2022-01-01 0:00:00' COMMENT 'When user active last time',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
```
