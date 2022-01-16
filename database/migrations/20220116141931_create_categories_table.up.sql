CREATE TABLE IF NOT EXISTS `categories` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'カテゴリコード',
    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'カテゴリ名',
    `sort_number` int(11) NOT NULL DEFAULT 1 COMMENT '並び順',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
