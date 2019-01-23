-- 16th July 2015

--
-- For Institutions
--

-- New table - institution_custom_fields
DROP TABLE IF EXISTS `institution_custom_fields`;
CREATE TABLE IF NOT EXISTS `institution_custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `is_mandatory` int(1) NOT NULL DEFAULT '0',
  `is_unique` int(1) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_fields`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `institution_custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- New table - institution_custom_field_options
DROP TABLE IF EXISTS `institution_custom_field_options`;
CREATE TABLE IF NOT EXISTS `institution_custom_field_options` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `is_default` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `order` int(3) NOT NULL DEFAULT '0',
  `institution_custom_field_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_field_options`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `institution_custom_field_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- New table - institution_custom_table_columns
DROP TABLE IF EXISTS `institution_custom_table_columns`;
CREATE TABLE IF NOT EXISTS `institution_custom_table_columns` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `institution_custom_field_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_table_columns`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `institution_custom_table_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- New table - institution_custom_table_rows
DROP TABLE IF EXISTS `institution_custom_table_rows`;
CREATE TABLE IF NOT EXISTS `institution_custom_table_rows` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `institution_custom_field_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_table_rows`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `institution_custom_table_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- New table - institution_custom_forms
DROP TABLE IF EXISTS `institution_custom_forms`;
CREATE TABLE IF NOT EXISTS `institution_custom_forms` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `custom_module_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_forms`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `institution_custom_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- New table - institution_custom_forms_fields
DROP TABLE IF EXISTS `institution_custom_forms_fields`;
CREATE TABLE IF NOT EXISTS `institution_custom_forms_fields` (
  `id` char(36) NOT NULL,
  `institution_custom_form_id` int(11) NOT NULL,
  `institution_custom_field_id` int(11) NOT NULL,
  `section` varchar(250) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `is_mandatory` int(1) NOT NULL DEFAULT '0',
  `is_unique` int(1) NOT NULL DEFAULT '0',
  `order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_forms_fields`
  ADD PRIMARY KEY (`id`);

-- New table - institution_custom_forms_filters
DROP TABLE IF EXISTS `institution_custom_forms_filters`;
CREATE TABLE IF NOT EXISTS `institution_custom_forms_filters` (
  `id` char(36) NOT NULL,
  `institution_custom_form_id` int(11) NOT NULL,
  `institution_custom_filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_forms_filters`
  ADD PRIMARY KEY (`id`);

-- Drop table
DROP TABLE IF EXISTS `institution_site_custom_field_values`;
DROP TABLE IF EXISTS `institution_site_custom_table_cells`;

-- Alter table - institution_custom_field_values
DROP TABLE IF EXISTS `institution_custom_field_values`;
CREATE TABLE IF NOT EXISTS `institution_custom_field_values` (
  `id` char(36) NOT NULL,
  `text_value` varchar(250) DEFAULT NULL,
  `number_value` int(11) DEFAULT NULL,
  `textarea_value` text,
  `date_value` date DEFAULT NULL,
  `time_value` time DEFAULT NULL,
  `institution_custom_field_id` int(11) NOT NULL,
  `institution_site_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_field_values`
  ADD PRIMARY KEY (`id`);

-- Alter table - institution_custom_table_cells
DROP TABLE IF EXISTS `institution_custom_table_cells`;
CREATE TABLE IF NOT EXISTS `institution_custom_table_cells` (
  `id` char(36) NOT NULL,
  `text_value` varchar(250) DEFAULT NULL,
  `institution_custom_field_id` int(11) NOT NULL,
  `institution_custom_table_column_id` int(11) NOT NULL,
  `institution_custom_table_row_id` int(11) NOT NULL,
  `institution_site_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `institution_custom_table_cells`
  ADD PRIMARY KEY (`id`);

--
-- For data patch
--

-- patch institution_custom_forms
TRUNCATE TABLE `institution_custom_forms`;
INSERT INTO `institution_custom_forms` (`id`, `name`, `description`, `custom_module_id`, `modified_user_id`, `modified`, `created_user_id`, `created`) VALUES
(1, 'General', '', 1, 1, '2015-01-01 00:00:00', 1, '2015-01-01 00:00:00');

-- patch institution_custom_fields
TRUNCATE TABLE `institution_custom_fields`;
INSERT INTO `institution_custom_fields` (`id`, `name`, `field_type`, `is_mandatory`, `is_unique`, `modified_user_id`, `modified`, `created_user_id`, `created`)
SELECT `id`, `name`,
  CASE
    WHEN `type` = 2 THEN 'TEXT'
    WHEN `type` = 3 THEN 'DROPDOWN'
    WHEN `type` = 4 THEN 'CHECKBOX'
    WHEN `type` = 5 THEN 'TEXTAREA'
    ELSE '-1'
  END,
  0, 0, `modified_user_id`, `modified`, `created_user_id`, `created`
FROM `z_1461_institution_site_custom_fields`
WHERE `type` != 1;

-- patch institution_custom_field_options
TRUNCATE TABLE `institution_custom_field_options`;
INSERT INTO `institution_custom_field_options` (`id`, `name`, `is_default`, `visible`, `order`, `institution_custom_field_id`, `modified_user_id`, `modified`, `created_user_id`, `created`)
SELECT `id`, `value`, 0, `visible`, `order`, `institution_site_custom_field_id`, `modified_user_id`, `modified`, `created_user_id`, `created`
FROM `z_1461_institution_site_custom_field_options`;

-- patch institution_custom_forms_fields
DELIMITER $$

DROP PROCEDURE IF EXISTS custom_patch
$$
CREATE PROCEDURE custom_patch()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE fieldId, formId INT(11);
  DECLARE fieldOrder INT(3);
  DECLARE fieldType INT(1);
  DECLARE fieldName VARCHAR(250);
  DECLARE sectionName VARCHAR(250);
  DECLARE sfq CURSOR FOR 
    SELECT `CustomFields`.`id`, `CustomFields`.`name`, `CustomFields`.`type`, `CustomFields`.`order`, 1
    FROM `z_1461_institution_site_custom_fields` AS `CustomFields`
    ORDER BY `CustomFields`.`order`;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN sfq;
  TRUNCATE TABLE `institution_custom_forms_fields`;

  read_loop: LOOP
  FETCH sfq INTO fieldId, fieldName, fieldType, fieldOrder, formId;
  IF done THEN
    LEAVE read_loop;
  END IF;

    IF fieldType = 1 THEN
      SET @sectionName = fieldName;
    END IF;

    IF fieldType <> 1 THEN
      INSERT INTO `institution_custom_forms_fields` (`id`, `institution_custom_form_id`, `institution_custom_field_id`, `section`, `order`) VALUES (uuid(), formId, fieldId, @sectionName, fieldOrder);
    END IF;

  END LOOP read_loop;

  CLOSE sfq;
END
$$

CALL custom_patch
$$

DROP PROCEDURE IF EXISTS custom_patch
$$

DELIMITER ;

-- patch institution_custom_forms_filters
INSERT INTO `institution_custom_forms_filters` (`id`, `institution_custom_form_id`, `institution_custom_filter_id`) VALUES
(uuid(), 1, 0);

-- patch institution_custom_field_values
TRUNCATE TABLE `institution_custom_field_values`;
INSERT INTO `institution_custom_field_values` (`id`, `text_value`, `number_value`, `textarea_value`, `institution_custom_field_id`, `institution_site_id`, `modified_user_id`, `modified`, `created_user_id`, `created`)
SELECT uuid(),
  CASE
    WHEN `CustomFields`.`type` = 2 THEN `CustomValues`.`value`
    ELSE NULL
  END,
  CASE
    WHEN `CustomFields`.`type` = 3 THEN `CustomValues`.`value`
    WHEN `CustomFields`.`type` = 4 THEN `CustomValues`.`value`
    ELSE NULL
  END,
  CASE
    WHEN `CustomFields`.`type` = 5 THEN `CustomValues`.`value`
    ELSE NULL
  END,
`CustomValues`.`institution_site_custom_field_id`, `CustomValues`.`institution_site_id`, `CustomValues`.`modified_user_id`, `CustomValues`.`modified`, `CustomValues`.`created_user_id`, `CustomValues`.`created`
FROM `z_1461_institution_site_custom_values` AS `CustomValues`
INNER JOIN `z_1461_institution_site_custom_fields` AS `CustomFields` ON `CustomFields`.`id` = `CustomValues`.`institution_site_custom_field_id`;
