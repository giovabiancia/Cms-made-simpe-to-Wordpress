-- article
INSERT INTO `wp_posts` (
		`post_author`,
		`post_date`,
		`post_date_gmt`,
		`post_content`,
		`post_title`,
		`post_excerpt`,
		`post_status`,
		`comment_status`,
		`ping_status`,
		`post_password`,
		`post_name`,
		`to_ping`,
		`pinged`,
		`post_modified`,
		`post_modified_gmt`,
		`post_content_filtered`,
		`post_parent`,
		`guid`,
		`menu_order`,
		`post_type`,
		`post_mime_type`,
		`comment_count`
		)

    SELECT

		'1',
		create_date,
    create_date,
		cgblog_data,
		cgblog_title,
		summary,
		'publish',
		'open',
		'open',
		'',
		cgblog_title,
		'',
		'',
		create_date,
		create_date,
		'',
		'0',
		'',
		'0',
		'post',
		'',
    '0'

FROM `Name of cms made simple table (_module_cg_blog)` ;


-- articles
INSERT INTO `wp_posts` (
	`post_author`,
	`post_date`,
	`post_date_gmt`,
	`post_content`,
	`post_title`,
	`post_excerpt`,
	`post_status`,
	`comment_status`,
	`ping_status`,
	`post_password`,
	`post_name`,
	`to_ping`,
	`pinged`,
	`post_modified`,
	`post_modified_gmt`,
	`post_content_filtered`,
	`post_parent`,
	`guid`,
	`menu_order`,
	`post_type`,
	`post_mime_type`,
	`comment_count`
) 
SELECT 
	'1',
	(table-name)_content.create_date,
	(table-name)_content.create_date,
	content,
	content_name,
	'',
	'publish',
	'open',
	'open',
	'',
	content_name,
	'',
	'',
	(table-name)_content.create_date,
	(table-name)_content.create_date,
	'',
	'0',
	'',
	'0',
	'page',
	'',
	'0'
FROM `(table-name _content)` inner join (table-name _content_props)
ON (table-name _content).content_id = (table-name _content)_props.content_id
WHERE prop_name = 'content';

update `wp_posts` set `post_name` = `ID`;
