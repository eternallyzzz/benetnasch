/*
 Navicat Premium Data Transfer

 Source Server         : docker-post
 Source Server Type    : PostgreSQL
 Source Server Version : 140007 (140007)
 Source Host           : 127.0.0.1:5432
 Source Catalog        : benetnasch
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140007 (140007)
 File Encoding         : 65001

 Date: 25/05/2023 08:37:18
*/


-- ----------------------------
-- Sequence structure for t_about_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_about_id_seq";
CREATE SEQUENCE "public"."t_about_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_about_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_about_id_seq1";
CREATE SEQUENCE "public"."t_about_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_about_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_about_id_seq2";
CREATE SEQUENCE "public"."t_about_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_article_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_article_id_seq";
CREATE SEQUENCE "public"."t_article_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_article_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_article_id_seq1";
CREATE SEQUENCE "public"."t_article_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_article_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_article_id_seq2";
CREATE SEQUENCE "public"."t_article_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_article_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_article_tag_id_seq";
CREATE SEQUENCE "public"."t_article_tag_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_article_tag_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_article_tag_id_seq1";
CREATE SEQUENCE "public"."t_article_tag_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_article_tag_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_article_tag_id_seq2";
CREATE SEQUENCE "public"."t_article_tag_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_category_id_seq";
CREATE SEQUENCE "public"."t_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_category_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_category_id_seq1";
CREATE SEQUENCE "public"."t_category_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_category_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_category_id_seq2";
CREATE SEQUENCE "public"."t_category_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_comment_id_seq";
CREATE SEQUENCE "public"."t_comment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_comment_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_comment_id_seq1";
CREATE SEQUENCE "public"."t_comment_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_comment_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_comment_id_seq2";
CREATE SEQUENCE "public"."t_comment_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_exception_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_exception_log_id_seq";
CREATE SEQUENCE "public"."t_exception_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_exception_log_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_exception_log_id_seq1";
CREATE SEQUENCE "public"."t_exception_log_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_exception_log_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_exception_log_id_seq2";
CREATE SEQUENCE "public"."t_exception_log_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_friend_link_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_friend_link_id_seq";
CREATE SEQUENCE "public"."t_friend_link_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_friend_link_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_friend_link_id_seq1";
CREATE SEQUENCE "public"."t_friend_link_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_friend_link_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_friend_link_id_seq2";
CREATE SEQUENCE "public"."t_friend_link_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_id_seq";
CREATE SEQUENCE "public"."t_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_id_seq1";
CREATE SEQUENCE "public"."t_job_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_id_seq2";
CREATE SEQUENCE "public"."t_job_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_log_id_seq";
CREATE SEQUENCE "public"."t_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_log_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_log_id_seq1";
CREATE SEQUENCE "public"."t_job_log_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_log_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_log_id_seq2";
CREATE SEQUENCE "public"."t_job_log_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_menu_id_seq";
CREATE SEQUENCE "public"."t_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_menu_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_menu_id_seq1";
CREATE SEQUENCE "public"."t_menu_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_menu_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_menu_id_seq2";
CREATE SEQUENCE "public"."t_menu_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_operation_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_operation_log_id_seq";
CREATE SEQUENCE "public"."t_operation_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_operation_log_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_operation_log_id_seq1";
CREATE SEQUENCE "public"."t_operation_log_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_operation_log_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_operation_log_id_seq2";
CREATE SEQUENCE "public"."t_operation_log_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_photo_album_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_photo_album_id_seq";
CREATE SEQUENCE "public"."t_photo_album_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_photo_album_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_photo_album_id_seq1";
CREATE SEQUENCE "public"."t_photo_album_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_photo_album_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_photo_album_id_seq2";
CREATE SEQUENCE "public"."t_photo_album_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_photo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_photo_id_seq";
CREATE SEQUENCE "public"."t_photo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_photo_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_photo_id_seq1";
CREATE SEQUENCE "public"."t_photo_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_photo_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_photo_id_seq2";
CREATE SEQUENCE "public"."t_photo_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_resource_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_resource_id_seq";
CREATE SEQUENCE "public"."t_resource_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_resource_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_resource_id_seq1";
CREATE SEQUENCE "public"."t_resource_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_resource_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_resource_id_seq2";
CREATE SEQUENCE "public"."t_resource_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_id_seq";
CREATE SEQUENCE "public"."t_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_id_seq1";
CREATE SEQUENCE "public"."t_role_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_id_seq2";
CREATE SEQUENCE "public"."t_role_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_menu_id_seq";
CREATE SEQUENCE "public"."t_role_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_menu_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_menu_id_seq1";
CREATE SEQUENCE "public"."t_role_menu_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_menu_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_menu_id_seq2";
CREATE SEQUENCE "public"."t_role_menu_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_resource_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_resource_id_seq";
CREATE SEQUENCE "public"."t_role_resource_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_resource_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_resource_id_seq1";
CREATE SEQUENCE "public"."t_role_resource_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_resource_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_resource_id_seq2";
CREATE SEQUENCE "public"."t_role_resource_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_tag_id_seq";
CREATE SEQUENCE "public"."t_tag_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_tag_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_tag_id_seq1";
CREATE SEQUENCE "public"."t_tag_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_tag_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_tag_id_seq2";
CREATE SEQUENCE "public"."t_tag_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_talk_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_talk_id_seq";
CREATE SEQUENCE "public"."t_talk_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_talk_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_talk_id_seq1";
CREATE SEQUENCE "public"."t_talk_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_talk_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_talk_id_seq2";
CREATE SEQUENCE "public"."t_talk_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_unique_view_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_unique_view_id_seq";
CREATE SEQUENCE "public"."t_unique_view_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_unique_view_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_unique_view_id_seq1";
CREATE SEQUENCE "public"."t_unique_view_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_unique_view_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_unique_view_id_seq2";
CREATE SEQUENCE "public"."t_unique_view_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_auth_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_auth_id_seq";
CREATE SEQUENCE "public"."t_user_auth_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_auth_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_auth_id_seq1";
CREATE SEQUENCE "public"."t_user_auth_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_auth_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_auth_id_seq2";
CREATE SEQUENCE "public"."t_user_auth_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_info_id_seq";
CREATE SEQUENCE "public"."t_user_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_info_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_info_id_seq1";
CREATE SEQUENCE "public"."t_user_info_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_info_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_info_id_seq2";
CREATE SEQUENCE "public"."t_user_info_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_role_id_seq";
CREATE SEQUENCE "public"."t_user_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_role_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_role_id_seq1";
CREATE SEQUENCE "public"."t_user_role_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_role_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_role_id_seq2";
CREATE SEQUENCE "public"."t_user_role_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_website_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_website_config_id_seq";
CREATE SEQUENCE "public"."t_website_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_website_config_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_website_config_id_seq1";
CREATE SEQUENCE "public"."t_website_config_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_website_config_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_website_config_id_seq2";
CREATE SEQUENCE "public"."t_website_config_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for t_about
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_about";
CREATE TABLE "public"."t_about" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "content" text COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_about"."content" IS '内容';
COMMENT ON COLUMN "public"."t_about"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_about"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_about
-- ----------------------------
INSERT INTO "public"."t_about" VALUES (1, '{"content":"this is about"}', '2022-07-24 17:22:13', '2022-09-23 14:37:34');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_article";
CREATE TABLE "public"."t_article" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "user_id" int4 NOT NULL,
  "category_id" int4,
  "article_cover" varchar(1024) COLLATE "pg_catalog"."default",
  "article_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "article_content" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_top" int2 NOT NULL,
  "is_featured" int2 NOT NULL,
  "is_delete" int2 NOT NULL,
  "status" int2 NOT NULL,
  "type" int2 NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "original_url" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_article"."user_id" IS '作者';
COMMENT ON COLUMN "public"."t_article"."category_id" IS '文章分类';
COMMENT ON COLUMN "public"."t_article"."article_cover" IS '文章缩略图';
COMMENT ON COLUMN "public"."t_article"."article_title" IS '标题';
COMMENT ON COLUMN "public"."t_article"."article_content" IS '内容';
COMMENT ON COLUMN "public"."t_article"."is_top" IS '是否置顶 0否 1是';
COMMENT ON COLUMN "public"."t_article"."is_featured" IS '是否推荐 0否 1是';
COMMENT ON COLUMN "public"."t_article"."is_delete" IS '是否删除  0否 1是';
COMMENT ON COLUMN "public"."t_article"."status" IS '状态值 1公开 2私密 3草稿';
COMMENT ON COLUMN "public"."t_article"."type" IS '文章类型 1原创 2转载 3翻译';
COMMENT ON COLUMN "public"."t_article"."password" IS '访问密码';
COMMENT ON COLUMN "public"."t_article"."original_url" IS '原文链接';
COMMENT ON COLUMN "public"."t_article"."create_time" IS '发表时间';
COMMENT ON COLUMN "public"."t_article"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO "public"."t_article" VALUES (142, 1, 219, 'http://i.yuhengx.com/articles/65dae343b7ad6310722004974f324242.jpg', 'vue的基本语法', '　　在学习vue之前，我们应了解一下什么是vue.js？

　　什么是Vue.js?

　　　　Vue.js是目前最后一个前端框架，React是最流行的一个前端框架（react除了开发网站，还可以开发手机App，Vue语法也是可以进行手机App，还需要借助 weex）

　　　　Vue.js是前端的主流框架之一，和angular、react.js一起，并成为前端三大主流框架

　　　　Vue.js是一套构建用户界面的框架，只关注视图层，它不仅易于上手，还便于第三方库即有项目整合（Vue有配置的第三方类库，可以整合起来做大型项目的开发）

　　　　前端的主要工作：主要负责MVC中的V这一层，主要工作就是和界面打交道，来制作页面效果

　　Node（后端）中的mvc与前端mvvm之间的区别：

　　　　mvc是后端的分层开发概念

　　　　mvvm是前端视图层的概念，主要关注于视图层分离，也就是说：mvvm把前端的视图层，分为三部分：model，view，vm viewmodel

　　Vue

　　　　vue返回的是一个对象

    　　　vue是一个mvvm的框架，（面试官常问的），angular是mvc的框架

    　　　Vue是vue的实例，这个实例存在计算机中，主要干俩大事：1、绑定事件；2、dom检测

　　　　Vuejs是封装的一个类，参数是options对象

　　　　Vue全家桶包括：vuex、vue-router、vue-resource还有构建工具 vue-cli

　　　　但是vue-resource 现在不使用了，用的是axios

　　　　最常用的属性是：

        　　　　el:""     指定vue所操作的dom范围，属性值是你获取的节点

        　　　　data     就是vue的model，是存放数据的，属性值是一个对象或者是一个函数，在组件中的data是一个函数

       　　　　 methods   是vue中的事件方法，

　　vue的基本内容：

　　　　Vue的渲染：

　　　　　　指令式渲染：

            　　　　v-html，v-text 采用{{}}语法==>插值运算

            　　　　v-html：它可以加标签，它会解析成html

            　　　　v-text：不能加标签，如果加了，它会当作字符串展示出来

                 　插值表达式：

                         　　{{ data中的数据 }}

                 　v-text与插值表达式的区别：

                         　默认v-text没有闪烁的问题的，而插值表达式有闪烁问题

                         　v-text 会覆盖元素中原本的内容，但是插值表达式只会替换自己的这个占位符，不会把整个元素的内容清空

                 　v-html 与 v-text的区别：

                         　v-html会解析html格式

                         　v-text与插值表达式会把内容当做文本来解析

                         　v-html 和 v-text都会覆盖元素中原有的内容

　　　　v-cloak

　　　　　　v-cloak     能够解决 插值表达式闪烁的问题

　　　　　　 　　

　　　　　　并在css中设置：

                         　　[v-cloak]{

                                  　　display: none;

                        　　 }

                        让所有设置 v-cloak 的元素隐藏，当加载完毕之后，元素身上的 v-cloak 就会消失

 　　　　条件指令：v-if

　　　　　　v-if="a" 

                     后面的值如果是true节点就显示，false就隐藏

　　　　　　     

　　　　v-show=""

　　　　　　  改变css中的display

        　　　　 后面的值如果是true，节点就显示，false就隐藏

　　　　v-if与v-show的区别：

        　　　　v-if是对节点的删除和添加，v-show是堆display属性值none和block的切换

　　　　v-if与v-show的区别及使用场景：

                 　　共同点：都是动态显示DOM元素

                 　　不同点：

                         　　v-if：

                                  　　v-if 是动态的向DOM树内添加或删除DOM元素

                                  　　v-if 切换一个局部编译/卸载的过程，切换时合适销毁和重建内部事件监听和子组件

                                  　　v-if是懒惰性的，初始条件 = false，什么也不做，只有在条件第一次 = true时，才开始局部编译

                               　　　v-show 是在任何条件下（首次条件是否为着真）都会被编译，然后缓存，而且DOM元素保留

                                  　　v-if有更高的切换消耗

                                 　　使用场景：

                                          　　v-if 适合运营条件不大可能改变

                         　　v-show

                                 　　 v-show有更高的初始化渲染消耗

                                  　　v-show只是简单的基于css切换

                                  　　v-show是通过设置DOM元素的display实现控制显隐的

                                 　　 使用场景：

                                          　　v-show 适合频繁切换

　　　　循环指令：v-for=""

        　　　　* 值是一个数组  (item,index) in 数组名

        　　　　* 值是一个对象  (value,key) in 对象名        value是属性值，key是属性

　　　 在v-for中key的使用注意事项：
                         v-for 循环的时候，key属性只能使用 number 或string，且是惟一的

                         key在使用的时候，必须使用 v-bind 属性绑定的形式，指定key的值

　　　　动态属性：v-bind:class="a"

            　　　　可以简写    :class="a"          v-bind可以省略

　　　　节点上绑定事件：

    　　　　　　 v-on:click="fn"         可简写：@click="fn"

            　　　　事件方法写在methods中

　　　　v-on 监听事件

        　　　　　v-on:click="事件名"

        　　　　　缩写@click="事件名"

　　　　v-model 数据绑定

        　　　　　可以在表单中使用v-model实现数据双向绑定

        　　　　　text类型中的文本都是字符串，v-model中的值相同

　　　　　　　　

　　　　　　　复选框 v-model中的值是boolean

　　　　　　　　

　　　　　　　单选框  v-model中值是value

　　　　　　　　

　　　　　　　　

　　　　v-model实现的原理：

            　　angular是mvc模式，ng-model是靠脏值检测

            　　vue靠的是数据劫持和发布者订阅者模式

        　　数据劫持：

               　　Object.definePropery()  这个方法

           　　　* 生成对象的方法    字面量  var obj={}/new Object()

            　　　* Object.definePropery()  给一个对象定义新属性或修改一个对象的属性

            　　　* object.getOwnPropertyDescriptor()   返回关于一个对象某个属性的描述符，

                　　　　第一个参数是目标对象，第二个参数是 对象的某个属性

                　　　　　　var obj={age:12}

                　　　　　　console.log(object.getOwnPropertyDescriptor(obj,''age''))

                　　　　返回属性的意思：

                    　　　　configurable  配置选项，值为true代表这个属性可删除

                    　　　　enumerable    值为true 代表可枚举 可以使用 for in 遍历

                    　　　　value         这个属性的值

                    　　　　writeable     代表这个属性可以更改

                　　　　　如果有了set和get属性就不能有writeable 和 value属性

　　　　常见的修饰符：

　　　　　　.lazy  v-model 在每次 input 事件触发后将输入框的值与数据进行同步

               　　　　<input v-model.lazy="msg" >

                 　.number           自动将用户的输入值转为数值类型

               　　　　<input v-model.number="age" type="number">

                 　.trim                 自动过滤用户输入的首尾空白字符

                              <input v-model.trim="msg">

　　　　vue的事件修饰符

                 　　vue.js为 v-on 提供了事件修饰符

                 　　.stop                 阻止maop

                 　　.prevent           阻止默认事件

                 　　.captur             添加事件监听器时使用事件捕获模式

                 　　.self                  只当事件在该元素本身（比如不是子元素）触发是触发回调

                　　 .once                事件值触发一次

                 　　事件修饰符是可以串联的：

                        　　

                 　　.stop和.self的区别：

                         　　.stop阻止事件冒泡

                         　　.self只会阻止自己身上冒泡行为的触发，并不会真正阻止 冒泡行为

 ', 1, 0, 0, 1, 2, NULL, NULL, '2023-03-07 20:32:42', '2023-04-13 02:55:30');

-- ----------------------------
-- Table structure for t_article_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_article_tag";
CREATE TABLE "public"."t_article_tag" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "article_id" int4 NOT NULL,
  "tag_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."t_article_tag"."article_id" IS '文章id';
COMMENT ON COLUMN "public"."t_article_tag"."tag_id" IS '标签id';

-- ----------------------------
-- Records of t_article_tag
-- ----------------------------
INSERT INTO "public"."t_article_tag" VALUES (89, 136, 42);
INSERT INTO "public"."t_article_tag" VALUES (118, 142, 48);
INSERT INTO "public"."t_article_tag" VALUES (119, 142, 50);
INSERT INTO "public"."t_article_tag" VALUES (17, 7, 41);
INSERT INTO "public"."t_article_tag" VALUES (18, 7, 4);

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category";
CREATE TABLE "public"."t_category" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "category_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_category"."category_name" IS '分类名';
COMMENT ON COLUMN "public"."t_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_category"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO "public"."t_category" VALUES (217, '后端', '2023-03-07 00:41:34', NULL);
INSERT INTO "public"."t_category" VALUES (218, '杂谈', '2023-03-07 19:51:40', NULL);
INSERT INTO "public"."t_category" VALUES (219, '前端', '2023-03-07 20:32:42', NULL);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_comment";
CREATE TABLE "public"."t_comment" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "user_id" int4 NOT NULL,
  "topic_id" int4,
  "comment_content" text COLLATE "pg_catalog"."default" NOT NULL,
  "reply_user_id" int4,
  "parent_id" int4,
  "type" int2 NOT NULL,
  "is_delete" int2 NOT NULL,
  "is_review" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_comment"."id" IS '主键';
COMMENT ON COLUMN "public"."t_comment"."user_id" IS '评论用户Id';
COMMENT ON COLUMN "public"."t_comment"."topic_id" IS '评论主题id';
COMMENT ON COLUMN "public"."t_comment"."comment_content" IS '评论内容';
COMMENT ON COLUMN "public"."t_comment"."reply_user_id" IS '回复用户id';
COMMENT ON COLUMN "public"."t_comment"."parent_id" IS '父评论id';
COMMENT ON COLUMN "public"."t_comment"."type" IS '评论类型 1.文章 2.留言 3.关于我 4.友链 5.说说';
COMMENT ON COLUMN "public"."t_comment"."is_delete" IS '是否删除  0否 1是';
COMMENT ON COLUMN "public"."t_comment"."is_review" IS '是否审核';
COMMENT ON COLUMN "public"."t_comment"."create_time" IS '评论时间';
COMMENT ON COLUMN "public"."t_comment"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO "public"."t_comment" VALUES (66, 1, 0, '测试', 0, 0, 2, 0, 1, '2023-04-12 23:46:32', '2023-04-12 23:46:32');

-- ----------------------------
-- Table structure for t_exception_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_exception_log";
CREATE TABLE "public"."t_exception_log" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "opt_uri" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "opt_method" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "request_method" varchar(255) COLLATE "pg_catalog"."default",
  "request_param" varchar(2000) COLLATE "pg_catalog"."default",
  "opt_desc" varchar(255) COLLATE "pg_catalog"."default",
  "exception_info" text COLLATE "pg_catalog"."default",
  "ip_address" varchar(255) COLLATE "pg_catalog"."default",
  "ip_source" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."t_exception_log"."opt_uri" IS '请求接口';
COMMENT ON COLUMN "public"."t_exception_log"."opt_method" IS '请求方式';
COMMENT ON COLUMN "public"."t_exception_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."t_exception_log"."request_param" IS '请求参数';
COMMENT ON COLUMN "public"."t_exception_log"."opt_desc" IS '操作描述';
COMMENT ON COLUMN "public"."t_exception_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."t_exception_log"."ip_address" IS 'ip';
COMMENT ON COLUMN "public"."t_exception_log"."ip_source" IS 'ip来源';
COMMENT ON COLUMN "public"."t_exception_log"."create_time" IS '操作时间';

-- ----------------------------
-- Records of t_exception_log
-- ----------------------------
INSERT INTO "public"."t_exception_log" OVERRIDING SYSTEM VALUE VALUES (43, '/admin/tags', 'com.aurora.controller.TagController.saveOrUpdateTag', 'POST', '[{"tagName":"docker"}]', '添加或修改标签', 'com.aurora.exception.BizException: 标签名已存在
	at com.aurora.service.impl.TagServiceImpl.saveOrUpdateTag(TagServiceImpl.java:73)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:568)
	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:698)
	at com.aurora.service.impl.TagServiceImpl$$SpringCGLIB$$0.saveOrUpdateTag(<generated>)
	at com.aurora.controller.TagController.saveOrUpdateTag(TagController.java:58)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:568)
	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750)
	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:173)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750)
	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:702)
	at com.aurora.controller.TagController$$SpringCGLIB$$0.saveOrUpdateTag(<generated>)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:568)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:207)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:152)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:884)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1081)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:974)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1011)
	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:914)
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:731)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:885)
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:814)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:223)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:185)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:110)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:185)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.springframework.security.web.FilterChainProxy.lambda$doFilterInternal$3(FilterChainProxy.java:231)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:365)
	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:117)
	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:83)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:126)
	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:120)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:131)
	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:85)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:100)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:179)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:227)
	at org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:221)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at com.aurora.filter.JwtAuthenticationTokenFilter.doFilterInternal(JwtAuthenticationTokenFilter.java:39)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:107)
	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:93)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.header.HeaderWriterFilter.doHeadersAfter(HeaderWriterFilter.java:90)
	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:75)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.context.SecurityContextHolderFilter.doFilter(SecurityContextHolderFilter.java:82)
	at org.springframework.security.web.context.SecurityContextHolderFilter.doFilter(SecurityContextHolderFilter.java:69)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:62)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.session.DisableEncodeUrlFilter.doFilterInternal(DisableEncodeUrlFilter.java:42)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:374)
	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:233)
	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:191)
	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:352)
	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:268)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:185)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:185)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:185)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:185)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:158)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:177)
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:542)
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:119)
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)
	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357)
	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:400)
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:859)
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1734)
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:52)
	at org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191)
	at org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659)
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
	at java.base/java.lang.Thread.run(Thread.java:833)
', '172.17.0.1', '内网IP|内网IP', '2023-03-12 17:42:21');

-- ----------------------------
-- Table structure for t_friend_link
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_friend_link";
CREATE TABLE "public"."t_friend_link" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "link_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "link_avatar" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "link_address" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "link_intro" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_friend_link"."link_name" IS '链接名';
COMMENT ON COLUMN "public"."t_friend_link"."link_avatar" IS '链接头像';
COMMENT ON COLUMN "public"."t_friend_link"."link_address" IS '链接地址';
COMMENT ON COLUMN "public"."t_friend_link"."link_intro" IS '链接介绍';
COMMENT ON COLUMN "public"."t_friend_link"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_friend_link"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_friend_link
-- ----------------------------
INSERT INTO "public"."t_friend_link" OVERRIDING SYSTEM VALUE VALUES (1, '测试', 'http://1.1.1.1/img/721772.png', 'http://1.1.1.1/index/1', '测试用', '2023-04-07 19:31:48', '2023-04-07 19:31:51');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_job";
CREATE TABLE "public"."t_job" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "misfire_policy" int2,
  "concurrent" int2,
  "status" int2,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t_job"."id" IS '任务ID';
COMMENT ON COLUMN "public"."t_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."t_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."t_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."t_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."t_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "public"."t_job"."concurrent" IS '是否并发执行（0禁止 1允许）';
COMMENT ON COLUMN "public"."t_job"."status" IS '状态（0暂停 1正常）';
COMMENT ON COLUMN "public"."t_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_job"."remark" IS '备注信息';
COMMENT ON TABLE "public"."t_job" IS '定时任务调度表';

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO "public"."t_job" OVERRIDING SYSTEM VALUE VALUES (81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '0 0,30 * * * ?', 3, 1, 1, '2022-08-11 21:49:27', '2022-08-13 08:49:47', '统计用户的地域分布');
INSERT INTO "public"."t_job" OVERRIDING SYSTEM VALUE VALUES (82, '统计访问量', '默认', 'auroraQuartz.saveUniqueView', '0 0 0 * * ?', 3, 1, 1, '2022-08-12 16:35:11', NULL, '向数据库中写入每天的访问量');
INSERT INTO "public"."t_job" OVERRIDING SYSTEM VALUE VALUES (83, '清空redis访客记录', '默认', 'auroraQuartz.clear', '0 0 1 * * ?', 3, 1, 1, '2022-08-12 16:36:30', '2022-08-13 08:47:48', '清空redis访客记录');
INSERT INTO "public"."t_job" OVERRIDING SYSTEM VALUE VALUES (84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '0 0/10 * * * ?', 3, 1, 0, '2022-08-13 21:19:08', '2022-08-19 14:13:52', '百度SEO');
INSERT INTO "public"."t_job" OVERRIDING SYSTEM VALUE VALUES (85, '清理定时任务日志', '默认', 'auroraQuartz.clearJobLogs', '0 0 0 * * ?', 3, 1, 1, '2022-08-13 21:26:21', NULL, '清理定时任务日志');

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_job_log";
CREATE TABLE "public"."t_job_log" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "job_id" int4 NOT NULL,
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" int2,
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "start_time" timestamp(6),
  "end_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_job_log"."id" IS '任务日志ID';
COMMENT ON COLUMN "public"."t_job_log"."job_id" IS '任务ID';
COMMENT ON COLUMN "public"."t_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."t_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."t_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."t_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "public"."t_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "public"."t_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."t_job_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_job_log"."start_time" IS '开始时间';
COMMENT ON COLUMN "public"."t_job_log"."end_time" IS '结束时间';
COMMENT ON TABLE "public"."t_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Records of t_job_log
-- ----------------------------
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6201, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：7毫秒', 1, '', '2023-03-07 00:00:00', '2023-03-07 00:00:00', '2023-03-07 00:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6202, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：12毫秒', 1, '', '2023-03-07 00:00:00', '2023-03-07 00:00:00', '2023-03-07 00:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6203, 85, '清理定时任务日志', '默认', 'auroraQuartz.clearJobLogs', '清理定时任务日志 总共耗时：19毫秒', 1, '', '2023-03-07 00:00:00', '2023-03-07 00:00:00', '2023-03-07 00:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6204, 82, '统计访问量', '默认', 'auroraQuartz.saveUniqueView', '统计访问量 总共耗时：32毫秒', 1, '', '2023-03-07 00:00:00', '2023-03-07 00:00:00', '2023-03-07 00:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6205, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：7毫秒', 1, '', '2023-03-07 00:10:00', '2023-03-07 00:10:00', '2023-03-07 00:10:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6206, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：6毫秒', 1, '', '2023-03-07 00:20:00', '2023-03-07 00:20:00', '2023-03-07 00:20:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6207, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：17毫秒', 1, '', '2023-03-07 00:30:00', '2023-03-07 00:30:00', '2023-03-07 00:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6208, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：77毫秒', 1, '', '2023-03-07 00:30:00', '2023-03-07 00:30:00', '2023-03-07 00:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6209, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：9毫秒', 1, '', '2023-03-07 00:40:00', '2023-03-07 00:40:00', '2023-03-07 00:40:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6210, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：201毫秒', 1, '', '2023-03-07 00:50:00', '2023-03-07 00:50:00', '2023-03-07 00:50:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6211, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：38毫秒', 1, '', '2023-03-07 13:00:00', '2023-03-07 13:00:00', '2023-03-07 13:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6212, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：217毫秒', 1, '', '2023-03-07 13:00:00', '2023-03-07 13:00:00', '2023-03-07 13:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6213, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：159毫秒', 1, '', '2023-03-07 13:10:00', '2023-03-07 13:10:00', '2023-03-07 13:10:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6214, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：17毫秒', 1, '', '2023-03-07 14:30:00', '2023-03-07 14:30:00', '2023-03-07 14:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6215, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：213毫秒', 1, '', '2023-03-07 14:30:00', '2023-03-07 14:30:00', '2023-03-07 14:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6216, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：175毫秒', 1, '', '2023-03-07 14:40:00', '2023-03-07 14:40:00', '2023-03-07 14:40:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6217, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：131毫秒', 1, '', '2023-03-07 14:50:00', '2023-03-07 14:50:00', '2023-03-07 14:50:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6218, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：83毫秒', 1, '', '2023-03-07 15:00:00', '2023-03-07 15:00:00', '2023-03-07 15:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6219, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：235毫秒', 1, '', '2023-03-07 15:00:00', '2023-03-07 15:00:00', '2023-03-07 15:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6220, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：170毫秒', 1, '', '2023-03-07 15:10:00', '2023-03-07 15:10:00', '2023-03-07 15:10:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6221, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：138毫秒', 1, '', '2023-03-07 15:50:00', '2023-03-07 15:50:00', '2023-03-07 15:50:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6222, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：7毫秒', 1, '', '2023-03-07 16:00:00', '2023-03-07 16:00:00', '2023-03-07 16:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6223, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：139毫秒', 1, '', '2023-03-07 16:00:00', '2023-03-07 16:00:00', '2023-03-07 16:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6224, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：230毫秒', 1, '', '2023-03-07 16:10:00', '2023-03-07 16:10:00', '2023-03-07 16:10:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6225, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：228毫秒', 1, '', '2023-03-07 16:20:00', '2023-03-07 16:20:00', '2023-03-07 16:20:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6226, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：223毫秒', 1, '', '2023-03-07 16:30:00', '2023-03-07 16:30:00', '2023-03-07 16:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6227, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：440毫秒', 1, '', '2023-03-07 16:30:00', '2023-03-07 16:30:00', '2023-03-07 16:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6228, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：175毫秒', 1, '', '2023-03-07 16:40:00', '2023-03-07 16:40:00', '2023-03-07 16:40:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6229, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：1862毫秒', 1, '', '2023-03-07 17:50:02', '2023-03-07 17:50:00', '2023-03-07 17:50:02');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6230, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：27毫秒', 1, '', '2023-03-07 18:00:00', '2023-03-07 18:00:00', '2023-03-07 18:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6231, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：1716毫秒', 1, '', '2023-03-07 18:20:02', '2023-03-07 18:20:00', '2023-03-07 18:20:02');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6232, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：32毫秒', 1, '', '2023-03-07 18:30:00', '2023-03-07 18:30:00', '2023-03-07 18:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6233, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：1761毫秒', 1, '', '2023-03-07 18:30:02', '2023-03-07 18:30:00', '2023-03-07 18:30:02');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6234, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：1719毫秒', 1, '', '2023-03-07 18:40:02', '2023-03-07 18:40:00', '2023-03-07 18:40:02');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6235, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：1574毫秒', 1, '', '2023-03-07 18:50:02', '2023-03-07 18:50:00', '2023-03-07 18:50:02');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6236, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：340毫秒', 1, '', '2023-03-07 19:20:00', '2023-03-07 19:20:00', '2023-03-07 19:20:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6237, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：27毫秒', 1, '', '2023-03-07 19:30:00', '2023-03-07 19:30:00', '2023-03-07 19:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6238, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：286毫秒', 1, '', '2023-03-07 19:30:00', '2023-03-07 19:30:00', '2023-03-07 19:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6239, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：362毫秒', 1, '', '2023-03-07 19:40:00', '2023-03-07 19:40:00', '2023-03-07 19:40:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6240, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：337毫秒', 1, '', '2023-03-07 19:50:00', '2023-03-07 19:50:00', '2023-03-07 19:50:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6241, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：16毫秒', 1, '', '2023-03-07 20:00:00', '2023-03-07 20:00:00', '2023-03-07 20:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6242, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：347毫秒', 1, '', '2023-03-07 20:00:00', '2023-03-07 20:00:00', '2023-03-07 20:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6243, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：430毫秒', 1, '', '2023-03-07 20:10:00', '2023-03-07 20:10:00', '2023-03-07 20:10:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6244, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：370毫秒', 1, '', '2023-03-07 20:20:00', '2023-03-07 20:20:00', '2023-03-07 20:20:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6245, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：16毫秒', 1, '', '2023-03-07 20:30:00', '2023-03-07 20:30:00', '2023-03-07 20:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6246, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：485毫秒', 1, '', '2023-03-07 20:30:00', '2023-03-07 20:30:00', '2023-03-07 20:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6247, 84, '百度SEO', '默认', 'auroraQuartz.baiduSeo', '百度SEO 总共耗时：1718毫秒', 1, '', '2023-03-08 15:20:02', '2023-03-08 15:20:00', '2023-03-08 15:20:02');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6248, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：19毫秒', 1, '', '2023-03-08 15:30:00', '2023-03-08 15:30:00', '2023-03-08 15:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6249, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：11毫秒', 1, '', '2023-03-08 16:00:00', '2023-03-08 16:00:00', '2023-03-08 16:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6250, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：12毫秒', 1, '', '2023-03-08 16:30:00', '2023-03-08 16:30:00', '2023-03-08 16:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6251, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：11毫秒', 1, '', '2023-03-08 17:00:00', '2023-03-08 17:00:00', '2023-03-08 17:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6252, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：22毫秒', 1, '', '2023-03-12 18:00:00', '2023-03-12 18:00:00', '2023-03-12 18:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6253, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：32毫秒', 1, '', '2023-03-12 18:30:00', '2023-03-12 18:30:00', '2023-03-12 18:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6254, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：37毫秒', 1, '', '2023-03-12 19:00:00', '2023-03-12 19:00:00', '2023-03-12 19:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6255, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：18毫秒', 1, '', '2023-03-12 19:30:00', '2023-03-12 19:30:00', '2023-03-12 19:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6256, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：21毫秒', 1, '', '2023-03-12 20:00:00', '2023-03-12 20:00:00', '2023-03-12 20:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6257, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：13毫秒', 1, '', '2023-03-12 20:30:00', '2023-03-12 20:30:00', '2023-03-12 20:30:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6258, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：17毫秒', 1, '', '2023-03-12 21:00:00', '2023-03-12 21:00:00', '2023-03-12 21:00:00');
INSERT INTO "public"."t_job_log" OVERRIDING SYSTEM VALUE VALUES (6259, 81, '统计用户地域分布', '默认', 'auroraQuartz.statisticalUserArea', '统计用户地域分布 总共耗时：17毫秒', 1, '', '2023-03-12 21:30:00', '2023-03-12 21:30:00', '2023-03-12 21:30:00');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_menu";
CREATE TABLE "public"."t_menu" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "path" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "component" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "icon" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6),
  "order_num" int2 NOT NULL,
  "parent_id" int4,
  "is_hidden" int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."t_menu"."id" IS '主键';
COMMENT ON COLUMN "public"."t_menu"."name" IS '菜单名';
COMMENT ON COLUMN "public"."t_menu"."path" IS '菜单路径';
COMMENT ON COLUMN "public"."t_menu"."component" IS '组件';
COMMENT ON COLUMN "public"."t_menu"."icon" IS '菜单icon';
COMMENT ON COLUMN "public"."t_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_menu"."order_num" IS '排序';
COMMENT ON COLUMN "public"."t_menu"."parent_id" IS '父id';
COMMENT ON COLUMN "public"."t_menu"."is_hidden" IS '是否隐藏  0否1是';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (1, '首页', '/', '/home/Home.vue', 'el-icon-myshouye', '2021-01-26 17:06:51', '2022-07-27 16:33:11', 1, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (2, '文章管理', '/article-submenu', 'Layout', 'el-icon-mywenzhang-copy', '2021-01-25 20:43:07', '2022-07-27 16:32:55', 2, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (3, '消息管理', '/message-submenu', 'Layout', 'el-icon-myxiaoxi', '2021-01-25 20:44:17', '2022-07-27 16:32:57', 3, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (4, '系统管理', '/system-submenu', 'Layout', 'el-icon-myshezhi', '2021-01-25 20:45:57', '2021-01-25 20:45:59', 5, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (5, '个人中心', '/setting', '/setting/Setting.vue', 'el-icon-myuser', '2021-01-26 17:22:38', '2021-01-26 17:22:41', 7, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (6, '发布文章', '/articles', '/article/Article.vue', 'el-icon-myfabiaowenzhang', '2021-01-26 14:30:48', '2021-01-26 14:30:51', 1, 2, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (7, '修改文章', '/articles/*', '/article/Article.vue', 'el-icon-myfabiaowenzhang', '2021-01-26 14:31:32', '2022-07-28 16:28:06', 2, 2, 1);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (8, '文章列表', '/article-list', '/article/ArticleList.vue', 'el-icon-mywenzhangliebiao', '2021-01-26 14:32:13', '2021-01-26 14:32:16', 3, 2, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (9, '分类管理', '/categories', '/category/Category.vue', 'el-icon-myfenlei', '2021-01-26 14:33:42', '2021-01-26 14:33:43', 4, 2, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (10, '标签管理', '/tags', '/tag/Tag.vue', 'el-icon-myicontag', '2021-01-26 14:34:33', '2021-01-26 14:34:36', 5, 2, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (11, '评论管理', '/comments', '/comment/Comment.vue', 'el-icon-mypinglunzu', '2021-01-26 14:35:31', '2021-01-26 14:35:34', 1, 3, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (13, '用户列表', '/users', '/user/User.vue', 'el-icon-myyonghuliebiao', '2021-01-26 14:38:09', '2021-01-26 14:38:12', 1, 202, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (14, '角色管理', '/roles', '/role/Role.vue', 'el-icon-myjiaoseliebiao', '2021-01-26 14:39:01', '2021-01-26 14:39:03', 2, 213, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (15, '接口管理', '/resources', '/resource/Resource.vue', 'el-icon-myjiekouguanli', '2021-01-26 14:40:14', '2021-08-07 20:00:28', 2, 213, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (16, '菜单管理', '/menus', '/menu/Menu.vue', 'el-icon-mycaidan', '2021-01-26 14:40:54', '2021-08-07 10:18:49', 2, 213, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (17, '友链管理', '/links', '/friendLink/FriendLink.vue', 'el-icon-mydashujukeshihuaico-', '2021-01-26 14:41:35', '2021-01-26 14:41:37', 3, 4, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (18, '关于我', '/about', '/about/About.vue', 'el-icon-myguanyuwo', '2021-01-26 14:42:05', '2021-01-26 14:42:10', 4, 4, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (19, '日志管理', '/log-submenu', 'Layout', 'el-icon-myguanyuwo', '2021-01-31 21:33:56', '2021-01-31 21:33:59', 6, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (20, '操作日志', '/operation/log', '/log/OperationLog.vue', 'el-icon-myguanyuwo', '2021-01-31 15:53:21', '2022-07-28 10:51:28', 1, 19, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (201, '在线用户', '/online/users', '/user/Online.vue', 'el-icon-myyonghuliebiao', '2021-02-05 14:59:51', '2021-02-05 14:59:53', 7, 202, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (202, '用户管理', '/users-submenu', 'Layout', 'el-icon-myyonghuliebiao', '2021-02-06 23:44:59', '2022-07-27 16:32:59', 4, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (205, '相册管理', '/album-submenu', 'Layout', 'el-icon-myimage-fill', '2021-08-03 15:10:54', '2021-08-07 20:02:06', 5, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (206, '相册列表', '/albums', '/album/Album.vue', 'el-icon-myzhaopian', '2021-08-03 20:29:19', '2021-08-04 11:45:47', 1, 205, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (208, '照片管理', '/albums/:albumId', '/album/Photo.vue', 'el-icon-myzhaopian', '2021-08-03 21:37:47', '2021-08-05 10:24:08', 1, 205, 1);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (209, '定时任务', '/quartz', '/quartz/Quartz.vue', 'el-icon-myyemianpeizhi', '2021-08-04 11:36:27', '2021-08-07 20:01:26', 2, 4, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (210, '照片回收站', '/photos/delete', '/album/Delete.vue', 'el-icon-myhuishouzhan', '2021-08-05 13:55:19', NULL, 3, 205, 1);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (213, '权限管理', '/permission-submenu', 'Layout', 'el-icon-mydaohanglantubiao_quanxianguanli', '2021-08-07 19:56:55', '2021-08-07 19:59:40', 4, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (214, '网站管理', '/website', '/website/Website.vue', 'el-icon-myxitong', '2021-08-07 20:06:41', NULL, 1, 4, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (220, '定时任务日志', '/quartz/log/:quartzId', '/log/QuartzLog.vue', 'el-icon-myguanyuwo', '2022-07-28 10:53:23', '2022-08-05 10:27:47', 2, 19, 1);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (221, '说说管理', '/talk-submenu', 'Layout', 'el-icon-mypinglun', '2022-08-15 17:27:10', '2022-08-15 17:27:39', 3, NULL, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (222, '说说列表', '/talk-list', '/talk/TalkList.vue', 'el-icon-myiconfontdongtaidianji', '2022-08-15 17:29:05', NULL, 1, 221, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (223, '发布说说', '/talks', '/talk/Talk.vue', 'el-icon-myfabusekuai', '2022-08-15 17:34:26', '2022-08-16 16:06:04', 2, 221, 0);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (224, '修改说说', '/talks/:talkId', '/talk/Talk.vue', 'el-icon-myfabusekuai', '2022-08-16 16:06:59', '2022-08-16 16:08:21', 3, 221, 1);
INSERT INTO "public"."t_menu" OVERRIDING SYSTEM VALUE VALUES (225, '异常日志', '/exception/log', '/log/ExceptionLog.vue', 'el-icon-myguanyuwo', '2022-08-25 13:40:08', '2022-08-25 13:40:31', 1, 19, 0);

-- ----------------------------
-- Table structure for t_operation_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_operation_log";
CREATE TABLE "public"."t_operation_log" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "opt_module" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "opt_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "opt_uri" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "opt_method" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "opt_desc" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "request_param" text COLLATE "pg_catalog"."default" NOT NULL,
  "request_method" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "response_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL,
  "nickname" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ip_address" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ip_source" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_operation_log"."id" IS '主键id';
COMMENT ON COLUMN "public"."t_operation_log"."opt_module" IS '操作模块';
COMMENT ON COLUMN "public"."t_operation_log"."opt_type" IS '操作类型';
COMMENT ON COLUMN "public"."t_operation_log"."opt_uri" IS '操作url';
COMMENT ON COLUMN "public"."t_operation_log"."opt_method" IS '操作方法';
COMMENT ON COLUMN "public"."t_operation_log"."opt_desc" IS '操作描述';
COMMENT ON COLUMN "public"."t_operation_log"."request_param" IS '请求参数';
COMMENT ON COLUMN "public"."t_operation_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."t_operation_log"."response_data" IS '返回数据';
COMMENT ON COLUMN "public"."t_operation_log"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."t_operation_log"."nickname" IS '用户昵称';
COMMENT ON COLUMN "public"."t_operation_log"."ip_address" IS '操作ip';
COMMENT ON COLUMN "public"."t_operation_log"."ip_source" IS '操作地址';
COMMENT ON COLUMN "public"."t_operation_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_operation_log"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_operation_log
-- ----------------------------
INSERT INTO "public"."t_operation_log" OVERRIDING SYSTEM VALUE VALUES (3, '说说模块', '删除', '/admin/talks', 'benetnasch/app/facade/api.DeleteTalks', '删除说说', '["68"]', 'DELETE', '{"flag":true,"code":20000,"message":"操作成功","data":null}', 1, '演示账号', '172.17.0.1', '0|0|0|内网IP|内网IP', '2023-05-25 07:33:38', '2023-05-25 07:33:38');
INSERT INTO "public"."t_operation_log" OVERRIDING SYSTEM VALUE VALUES (13, 'benetnasch信息', '新增或修改', '/report', 'benetnasch/app/facade/api.Report', '上报访客信息', '', 'POST', '{"flag":true,"code":20000,"message":"操作成功","data":null}', 1, '演示账号', '172.17.0.1', '0|0|0|内网IP|内网IP', '2023-05-25 07:49:24', '2023-05-25 07:49:24');
INSERT INTO "public"."t_operation_log" OVERRIDING SYSTEM VALUE VALUES (15, '用户账号模块', '新增或修改', '/users/logout', 'benetnasch/app/facade/api.Logout', '用户登出', '', 'POST', '{"flag":true,"code":20000,"message":"操作成功","data":{"message":"注销成功"}}', 1, '演示账号', '172.17.0.1', '0|0|0|内网IP|内网IP', '2023-05-25 07:52:21', '2023-05-25 07:52:21');

-- ----------------------------
-- Table structure for t_photo
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_photo";
CREATE TABLE "public"."t_photo" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "album_id" int4 NOT NULL,
  "photo_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "photo_desc" varchar(50) COLLATE "pg_catalog"."default",
  "photo_src" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_delete" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_photo"."id" IS '主键';
COMMENT ON COLUMN "public"."t_photo"."album_id" IS '相册id';
COMMENT ON COLUMN "public"."t_photo"."photo_name" IS '照片名';
COMMENT ON COLUMN "public"."t_photo"."photo_desc" IS '照片描述';
COMMENT ON COLUMN "public"."t_photo"."photo_src" IS '照片地址';
COMMENT ON COLUMN "public"."t_photo"."is_delete" IS '是否删除';
COMMENT ON COLUMN "public"."t_photo"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_photo"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."t_photo" IS '照片';

-- ----------------------------
-- Records of t_photo
-- ----------------------------

-- ----------------------------
-- Table structure for t_photo_album
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_photo_album";
CREATE TABLE "public"."t_photo_album" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "album_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "album_desc" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "album_cover" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_delete" int2 NOT NULL,
  "status" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_photo_album"."id" IS '主键';
COMMENT ON COLUMN "public"."t_photo_album"."album_name" IS '相册名';
COMMENT ON COLUMN "public"."t_photo_album"."album_desc" IS '相册描述';
COMMENT ON COLUMN "public"."t_photo_album"."album_cover" IS '相册封面';
COMMENT ON COLUMN "public"."t_photo_album"."is_delete" IS '是否删除';
COMMENT ON COLUMN "public"."t_photo_album"."status" IS '状态值 1公开 2私密';
COMMENT ON COLUMN "public"."t_photo_album"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_photo_album"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."t_photo_album" IS '相册';

-- ----------------------------
-- Records of t_photo_album
-- ----------------------------

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_resource";
CREATE TABLE "public"."t_resource" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "resource_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "request_method" varchar(10) COLLATE "pg_catalog"."default",
  "parent_id" int4,
  "is_anonymous" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_resource"."id" IS '主键';
COMMENT ON COLUMN "public"."t_resource"."resource_name" IS '资源名';
COMMENT ON COLUMN "public"."t_resource"."url" IS '权限路径';
COMMENT ON COLUMN "public"."t_resource"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."t_resource"."parent_id" IS '父模块id';
COMMENT ON COLUMN "public"."t_resource"."is_anonymous" IS '是否匿名访问 0否 1是';
COMMENT ON COLUMN "public"."t_resource"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_resource"."update_time" IS '修改时间';

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1050, 'aurora信息', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1051, '分类模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1052, '友链模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1053, '定时任务日志模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1054, '定时任务模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1055, '异常处理模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1056, '操作日志模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1057, '文章模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1058, '标签模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1059, '照片模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1060, '用户信息模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1061, '用户账号模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1062, '相册模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1063, '菜单模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1064, '角色模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1065, '评论模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1066, '说说模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1067, '资源模块', NULL, NULL, NULL, 0, '2022-08-19 22:26:21', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1068, '获取系统信息', '/', 'GET', 1050, 1, '2022-08-19 22:26:22', '2022-08-19 22:26:55');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1069, '查看关于我信息', '/about', 'GET', 1050, 1, '2022-08-19 22:26:22', '2022-08-19 22:26:57');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1070, '获取系统后台信息', '/admin', 'GET', 1050, 0, '2022-08-19 22:26:22', '2023-03-03 11:17:26');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1071, '修改关于我信息', '/admin/about', 'PUT', 1050, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1072, '获取后台文章', '/admin/articles', 'GET', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1073, '保存和修改文章', '/admin/articles', 'POST', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1074, '删除或者恢复文章', '/admin/articles', 'PUT', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1075, '物理删除文章', '/admin/articles/delete', 'DELETE', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1076, '导出文章', '/admin/articles/export', 'POST', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1077, '上传文章图片', '/admin/articles/images', 'POST', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1078, '导入文章', '/admin/articles/import', 'POST', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1079, '修改文章是否置顶和推荐', '/admin/articles/topAndFeatured', 'PUT', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1080, '根据id查看后台文章', '/admin/articles/*', 'GET', 1057, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1081, '查看后台分类列表', '/admin/categories', 'GET', 1051, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1082, '添加或修改分类', '/admin/categories', 'POST', 1051, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1083, '删除分类', '/admin/categories', 'DELETE', 1051, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1084, '搜索文章分类', '/admin/categories/search', 'GET', 1051, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1085, '查询后台评论', '/admin/comments', 'GET', 1065, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1086, '删除评论', '/admin/comments', 'DELETE', 1065, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1087, '审核评论', '/admin/comments/review', 'PUT', 1065, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1088, '上传博客配置图片', '/admin/config/images', 'POST', 1050, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1089, '获取定时任务的日志列表', '/admin/jobLogs', 'GET', 1053, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1090, '删除定时任务的日志', '/admin/jobLogs', 'DELETE', 1053, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1091, '清除定时任务的日志', '/admin/jobLogs/clean', 'DELETE', 1053, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1092, '获取定时任务日志的所有组名', '/admin/jobLogs/jobGroups', 'GET', 1053, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1093, '获取任务列表', '/admin/jobs', 'GET', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1094, '添加定时任务', '/admin/jobs', 'POST', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1095, '修改定时任务', '/admin/jobs', 'PUT', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1096, '删除定时任务', '/admin/jobs', 'DELETE', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1097, '获取所有job分组', '/admin/jobs/jobGroups', 'GET', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1098, '执行某个任务', '/admin/jobs/run', 'PUT', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1099, '更改任务的状态', '/admin/jobs/status', 'PUT', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1100, '根据id获取任务', '/admin/jobs/*', 'GET', 1054, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1101, '查看后台友链列表', '/admin/links', 'GET', 1052, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1102, '保存或修改友链', '/admin/links', 'POST', 1052, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1103, '删除友链', '/admin/links', 'DELETE', 1052, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1104, '查看菜单列表', '/admin/menus', 'GET', 1063, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1105, '新增或修改菜单', '/admin/menus', 'POST', 1063, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1106, '修改目录是否隐藏', '/admin/menus/isHidden', 'PUT', 1063, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1107, '删除菜单', '/admin/menus/*', 'DELETE', 1063, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1108, '查看操作日志', '/admin/operation/logs', 'GET', 1056, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1109, '删除操作日志', '/admin/operation/logs', 'DELETE', 1056, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1110, '根据相册id获取照片列表', '/admin/photos', 'GET', 1059, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1111, '保存照片', '/admin/photos', 'POST', 1059, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1112, '更新照片信息', '/admin/photos', 'PUT', 1059, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1113, '删除照片', '/admin/photos', 'DELETE', 1059, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1114, '移动照片相册', '/admin/photos/album', 'PUT', 1059, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1115, '查看后台相册列表', '/admin/photos/albums', 'GET', 1062, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1116, '保存或更新相册', '/admin/photos/albums', 'POST', 1062, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1117, '上传相册封面', '/admin/photos/albums/cover', 'POST', 1062, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1118, '获取后台相册列表信息', '/admin/photos/albums/info', 'GET', 1062, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1119, '根据id删除相册', '/admin/photos/albums/*', 'DELETE', 1062, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1120, '根据id获取后台相册信息', '/admin/photos/albums/*/info', 'GET', 1062, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1121, '更新照片删除状态', '/admin/photos/delete', 'PUT', 1059, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1122, '查看资源列表', '/admin/resources', 'GET', 1067, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1123, '新增或修改资源', '/admin/resources', 'POST', 1067, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1124, '删除资源', '/admin/resources/*', 'DELETE', 1067, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1125, '保存或更新角色', '/admin/role', 'POST', 1064, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1126, '查看角色菜单选项', '/admin/role/menus', 'GET', 1063, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1127, '查看角色资源选项', '/admin/role/resources', 'GET', 1067, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1128, '查询角色列表', '/admin/roles', 'GET', 1064, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1129, '删除角色', '/admin/roles', 'DELETE', 1064, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1130, '查询后台标签列表', '/admin/tags', 'GET', 1058, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1131, '添加或修改标签', '/admin/tags', 'POST', 1058, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1132, '删除标签', '/admin/tags', 'DELETE', 1058, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1133, '搜索文章标签', '/admin/tags/search', 'GET', 1058, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1134, '查看后台说说', '/admin/talks', 'GET', 1066, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1135, '保存或修改说说', '/admin/talks', 'POST', 1066, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1136, '删除说说', '/admin/talks', 'DELETE', 1066, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1137, '上传说说图片', '/admin/talks/images', 'POST', 1066, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1138, '根据id查看后台说说', '/admin/talks/*', 'GET', 1066, 1, '2022-08-19 22:26:22', '2022-08-19 22:33:52');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1139, '查看当前用户菜单', '/admin/user/menus', 'GET', 1063, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1140, '查询后台用户列表', '/admin/users', 'GET', 1061, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1141, '获取用户区域分布', '/admin/users/area', 'GET', 1061, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1142, '修改用户禁用状态', '/admin/users/disable', 'PUT', 1060, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1143, '查看在线用户', '/admin/users/online', 'GET', 1060, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1144, '修改管理员密码', '/admin/users/password', 'PUT', 1061, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1145, '查询用户角色选项', '/admin/users/role', 'GET', 1064, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1146, '修改用户角色', '/admin/users/role', 'PUT', 1060, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1147, '下线用户', '/admin/users/*/online', 'DELETE', 1060, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1148, '获取网站配置', '/admin/website/config', 'GET', 1050, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1149, '更新网站配置', '/admin/website/config', 'PUT', 1050, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1150, '根据相册id查看照片列表', '/albums/*/photos', 'GET', 1059, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:54');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1151, '获取所有文章归档', '/archives/all', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:35');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1152, '获取所有文章', '/articles/all', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:37');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1153, '根据分类id获取文章', '/articles/categoryId', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:38');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1154, '搜索文章', '/articles/search', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:40');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1155, '根据标签id获取文章', '/articles/tagId', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:40');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1156, '获取置顶和推荐文章', '/articles/topAndFeatured', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:41');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1157, '根据id获取文章', '/articles/*', 'GET', 1057, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:42');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1158, '/处理BizException', '/bizException', 'GET', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1159, '/处理BizException', '/bizException', 'HEAD', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1160, '/处理BizException', '/bizException', 'POST', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1161, '/处理BizException', '/bizException', 'PUT', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1162, '/处理BizException', '/bizException', 'DELETE', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1163, '/处理BizException', '/bizException', 'OPTIONS', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1164, '/处理BizException', '/bizException', 'PATCH', 1055, 0, '2022-08-19 22:26:22', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1165, '获取所有分类', '/categories/all', 'GET', 1051, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:05');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1166, '获取评论', '/comments', 'GET', 1065, 1, '2022-08-19 22:26:22', '2022-08-19 22:33:50');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1167, '添加评论', '/comments/save', 'POST', 1065, 0, '2022-08-19 22:26:22', '2022-08-19 22:33:47');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1168, '获取前七个评论', '/comments/topSeven', 'GET', 1065, 1, '2022-08-19 22:26:22', '2022-08-19 22:33:44');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1169, '查看友链列表', '/links', 'GET', 1052, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:13');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1170, '获取相册列表', '/photos/albums', 'GET', 1062, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:25');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1171, 'report', '/report', 'POST', 1050, 1, '2022-08-19 22:26:22', '2022-08-19 22:27:00');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1172, '获取所有标签', '/tags/all', 'GET', 1058, 1, '2022-08-19 22:26:22', '2022-08-19 22:31:23');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1173, '获取前十个标签', '/tags/topTen', 'GET', 1058, 1, '2022-08-19 22:26:22', '2022-08-19 22:31:27');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1174, '查看说说列表', '/talks', 'GET', 1066, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:38');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1175, '根据id查看说说', '/talks/*', 'GET', 1066, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:38');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1176, '更新用户头像', '/users/avatar', 'POST', 1060, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:05');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1177, '发送邮箱验证码', '/users/code', 'GET', 1061, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:15');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1178, '绑定用户邮箱', '/users/email', 'PUT', 1060, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:06');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1179, '更新用户信息', '/users/info', 'PUT', 1060, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:07');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1180, '根据id获取用户信息', '/users/info/*', 'GET', 1060, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:07');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1181, '用户登出', '/users/logout', 'POST', 1061, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:15');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1182, 'qq登录', '/users/oauth/qq', 'POST', 1061, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:16');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1183, '修改密码', '/users/password', 'PUT', 1061, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:18');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1184, '用户注册', '/users/register', 'POST', 1061, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:17');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1185, '修改用户的订阅状态', '/users/subscribe', 'PUT', 1060, 1, '2022-08-19 22:26:22', '2022-08-19 22:28:08');
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1186, '异常日志模块', NULL, NULL, NULL, 0, '2022-08-25 15:13:40', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1187, '获取异常日志', '/admin/exception/logs', 'GET', 1186, 0, '2022-08-25 15:14:27', NULL);
INSERT INTO "public"."t_resource" OVERRIDING SYSTEM VALUE VALUES (1188, '删除异常日志', '/admin/exception/logs', 'DELETE', 1186, 0, '2022-08-25 15:14:59', NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role";
CREATE TABLE "public"."t_role" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "role_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "is_disable" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_role"."id" IS '主键id';
COMMENT ON COLUMN "public"."t_role"."role_name" IS '角色名';
COMMENT ON COLUMN "public"."t_role"."is_disable" IS '是否禁用  0否 1是';
COMMENT ON COLUMN "public"."t_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_role"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO "public"."t_role" OVERRIDING SYSTEM VALUE VALUES (1, 'admin', 0, '2022-07-20 13:25:19', '2022-08-16 16:07:49');
INSERT INTO "public"."t_role" OVERRIDING SYSTEM VALUE VALUES (2, 'user', 0, '2022-07-20 13:25:40', '2022-08-19 22:55:26');
INSERT INTO "public"."t_role" OVERRIDING SYSTEM VALUE VALUES (14, 'test', 0, '2022-08-19 21:48:14', '2022-08-19 22:38:15');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role_menu";
CREATE TABLE "public"."t_role_menu" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "role_id" int4,
  "menu_id" int4
)
;
COMMENT ON COLUMN "public"."t_role_menu"."id" IS '主键';
COMMENT ON COLUMN "public"."t_role_menu"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."t_role_menu"."menu_id" IS '菜单id';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2784, 1, 1);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2785, 1, 2);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2786, 1, 6);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2787, 1, 7);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2788, 1, 8);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2789, 1, 9);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2790, 1, 10);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2791, 1, 3);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2792, 1, 11);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2793, 1, 221);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2794, 1, 222);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2795, 1, 223);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2796, 1, 224);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2797, 1, 202);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2798, 1, 13);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2799, 1, 201);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2800, 1, 213);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2801, 1, 14);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2802, 1, 15);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2803, 1, 16);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2804, 1, 4);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2805, 1, 214);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2806, 1, 209);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2807, 1, 17);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2808, 1, 18);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2809, 1, 205);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2810, 1, 206);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2811, 1, 208);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2812, 1, 210);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2813, 1, 19);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2814, 1, 20);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2815, 1, 225);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2816, 1, 220);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2817, 1, 5);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2852, 14, 1);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2853, 14, 2);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2854, 14, 6);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2855, 14, 7);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2856, 14, 8);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2857, 14, 9);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2858, 14, 10);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2859, 14, 3);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2860, 14, 11);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2861, 14, 221);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2862, 14, 222);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2863, 14, 223);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2864, 14, 224);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2865, 14, 202);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2866, 14, 13);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2867, 14, 201);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2868, 14, 213);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2869, 14, 14);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2870, 14, 15);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2871, 14, 16);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2872, 14, 4);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2873, 14, 214);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2874, 14, 209);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2875, 14, 17);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2876, 14, 18);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2877, 14, 205);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2878, 14, 206);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2879, 14, 208);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2880, 14, 210);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2881, 14, 19);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2882, 14, 20);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2883, 14, 225);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2884, 14, 220);
INSERT INTO "public"."t_role_menu" OVERRIDING SYSTEM VALUE VALUES (2885, 14, 5);

-- ----------------------------
-- Table structure for t_role_resource
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role_resource";
CREATE TABLE "public"."t_role_resource" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "role_id" int4,
  "resource_id" int4
)
;
COMMENT ON COLUMN "public"."t_role_resource"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."t_role_resource"."resource_id" IS '权限id';

-- ----------------------------
-- Records of t_role_resource
-- ----------------------------
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5406, 2, 1146);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5407, 2, 1167);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5408, 1, 1050);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5409, 1, 1070);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5410, 1, 1071);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5411, 1, 1088);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5412, 1, 1148);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5413, 1, 1149);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5414, 1, 1051);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5415, 1, 1081);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5416, 1, 1082);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5417, 1, 1083);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5418, 1, 1084);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5419, 1, 1052);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5420, 1, 1101);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5421, 1, 1102);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5422, 1, 1103);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5423, 1, 1053);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5424, 1, 1089);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5425, 1, 1090);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5426, 1, 1091);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5427, 1, 1092);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5428, 1, 1054);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5429, 1, 1093);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5430, 1, 1094);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5431, 1, 1095);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5432, 1, 1096);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5433, 1, 1097);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5434, 1, 1098);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5435, 1, 1099);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5436, 1, 1100);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5437, 1, 1055);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5438, 1, 1158);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5439, 1, 1159);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5440, 1, 1160);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5441, 1, 1161);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5442, 1, 1162);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5443, 1, 1163);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5444, 1, 1164);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5445, 1, 1056);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5446, 1, 1108);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5447, 1, 1109);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5448, 1, 1057);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5449, 1, 1072);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5450, 1, 1073);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5451, 1, 1074);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5452, 1, 1075);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5453, 1, 1076);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5454, 1, 1077);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5455, 1, 1078);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5456, 1, 1079);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5457, 1, 1080);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5458, 1, 1058);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5459, 1, 1130);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5460, 1, 1131);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5461, 1, 1132);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5462, 1, 1133);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5463, 1, 1059);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5464, 1, 1110);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5465, 1, 1111);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5466, 1, 1112);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5467, 1, 1113);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5468, 1, 1114);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5469, 1, 1121);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5470, 1, 1060);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5471, 1, 1142);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5472, 1, 1143);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5473, 1, 1146);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5474, 1, 1147);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5475, 1, 1061);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5476, 1, 1140);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5477, 1, 1141);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5478, 1, 1144);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5479, 1, 1062);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5480, 1, 1115);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5481, 1, 1116);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5482, 1, 1117);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5483, 1, 1118);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5484, 1, 1119);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5485, 1, 1120);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5486, 1, 1063);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5487, 1, 1104);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5488, 1, 1105);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5489, 1, 1106);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5490, 1, 1107);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5491, 1, 1126);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5492, 1, 1139);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5493, 1, 1064);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5494, 1, 1125);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5495, 1, 1128);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5496, 1, 1129);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5497, 1, 1145);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5498, 1, 1065);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5499, 1, 1085);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5500, 1, 1086);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5501, 1, 1087);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5502, 1, 1167);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5503, 1, 1066);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5504, 1, 1134);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5505, 1, 1135);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5506, 1, 1136);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5507, 1, 1137);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5508, 1, 1067);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5509, 1, 1122);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5510, 1, 1123);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5511, 1, 1124);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5512, 1, 1127);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5513, 1, 1186);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5514, 1, 1187);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5515, 1, 1188);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5516, 14, 1070);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5517, 14, 1148);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5518, 14, 1081);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5519, 14, 1084);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5520, 14, 1101);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5521, 14, 1089);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5522, 14, 1092);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5523, 14, 1093);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5524, 14, 1097);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5525, 14, 1100);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5526, 14, 1108);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5527, 14, 1072);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5528, 14, 1080);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5529, 14, 1130);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5530, 14, 1133);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5531, 14, 1110);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5532, 14, 1143);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5533, 14, 1140);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5534, 14, 1141);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5535, 14, 1115);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5536, 14, 1118);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5537, 14, 1104);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5538, 14, 1126);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5539, 14, 1139);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5540, 14, 1128);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5541, 14, 1145);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5542, 14, 1085);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5543, 14, 1134);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5544, 14, 1122);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5545, 14, 1127);
INSERT INTO "public"."t_role_resource" OVERRIDING SYSTEM VALUE VALUES (5546, 14, 1187);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_tag";
CREATE TABLE "public"."t_tag" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "tag_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_tag"."tag_name" IS '标签名';
COMMENT ON COLUMN "public"."t_tag"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_tag"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (41, 'docker', '2023-03-07 00:41:34', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (42, 'elasticsearch', '2023-03-07 00:41:34', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (43, 'python', '2023-03-07 19:48:52', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (44, '贪吃蛇', '2023-03-07 19:48:52', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (45, '编程语言', '2023-03-07 19:51:40', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (46, '疫情', '2023-03-07 19:55:39', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (47, 'mysql', '2023-03-07 20:25:35', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (48, 'vue', '2023-03-07 20:32:42', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (49, 'docekr', '2023-03-12 17:42:31', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (50, 'vuex', '2023-04-04 19:55:15', NULL);
INSERT INTO "public"."t_tag" OVERRIDING SYSTEM VALUE VALUES (4, 'asdwed', '2023-04-14 03:51:19', '2023-04-14 03:51:19');

-- ----------------------------
-- Table structure for t_talk
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_talk";
CREATE TABLE "public"."t_talk" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "user_id" int4 NOT NULL,
  "content" varchar(2000) COLLATE "pg_catalog"."default" NOT NULL,
  "images" varchar(2500) COLLATE "pg_catalog"."default",
  "is_top" int2 NOT NULL,
  "status" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_talk"."id" IS '说说id';
COMMENT ON COLUMN "public"."t_talk"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."t_talk"."content" IS '说说内容';
COMMENT ON COLUMN "public"."t_talk"."images" IS '图片';
COMMENT ON COLUMN "public"."t_talk"."is_top" IS '是否置顶';
COMMENT ON COLUMN "public"."t_talk"."status" IS '状态 1.公开 2.私密';
COMMENT ON COLUMN "public"."t_talk"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_talk"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_talk
-- ----------------------------
INSERT INTO "public"."t_talk" OVERRIDING SYSTEM VALUE VALUES (16, 1, 'test', '', 0, 1, '2023-05-25 07:32:27', '2023-05-25 07:32:27');

-- ----------------------------
-- Table structure for t_unique_view
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_unique_view";
CREATE TABLE "public"."t_unique_view" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "views_count" int4 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_unique_view"."views_count" IS '访问量';
COMMENT ON COLUMN "public"."t_unique_view"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_unique_view"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_unique_view
-- ----------------------------
INSERT INTO "public"."t_unique_view" OVERRIDING SYSTEM VALUE VALUES (1, 14, '2023-04-10 22:18:59', NULL);
INSERT INTO "public"."t_unique_view" OVERRIDING SYSTEM VALUE VALUES (3, 123, '2023-04-07 22:19:16', NULL);
INSERT INTO "public"."t_unique_view" OVERRIDING SYSTEM VALUE VALUES (1539, 124, '2023-04-12 00:00:00', NULL);
INSERT INTO "public"."t_unique_view" OVERRIDING SYSTEM VALUE VALUES (4, 90, '2023-04-08 22:20:29', NULL);

-- ----------------------------
-- Table structure for t_user_auth
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user_auth";
CREATE TABLE "public"."t_user_auth" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "user_info_id" int4 NOT NULL,
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "login_type" int2 NOT NULL,
  "ip_address" varchar(50) COLLATE "pg_catalog"."default",
  "ip_source" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6),
  "last_login_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_user_auth"."user_info_id" IS '用户信息id';
COMMENT ON COLUMN "public"."t_user_auth"."username" IS '用户名';
COMMENT ON COLUMN "public"."t_user_auth"."password" IS '密码';
COMMENT ON COLUMN "public"."t_user_auth"."login_type" IS '登录类型';
COMMENT ON COLUMN "public"."t_user_auth"."ip_address" IS '用户登录ip';
COMMENT ON COLUMN "public"."t_user_auth"."ip_source" IS 'ip来源';
COMMENT ON COLUMN "public"."t_user_auth"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_user_auth"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_user_auth"."last_login_time" IS '上次登录时间';

-- ----------------------------
-- Records of t_user_auth
-- ----------------------------
INSERT INTO "public"."t_user_auth" OVERRIDING SYSTEM VALUE VALUES (1, 1, 'admin@163.com', '$2a$10$Sm8cCwFom0BOvqaUmN207.p/fI4dn72y9UP4CjoQWCMTAbc9Fod2O', 1, '172.17.0.1', '0|0|0|内网IP|内网IP', '2022-08-19 21:43:46', '2023-05-24 00:34:54', '2023-05-24 00:34:54');

-- ----------------------------
-- Table structure for t_user_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user_info";
CREATE TABLE "public"."t_user_info" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "nickname" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "intro" varchar(255) COLLATE "pg_catalog"."default",
  "website" varchar(255) COLLATE "pg_catalog"."default",
  "is_subscribe" int2,
  "is_disable" int2 NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_user_info"."id" IS '用户ID';
COMMENT ON COLUMN "public"."t_user_info"."email" IS '邮箱号';
COMMENT ON COLUMN "public"."t_user_info"."nickname" IS '用户昵称';
COMMENT ON COLUMN "public"."t_user_info"."avatar" IS '用户头像';
COMMENT ON COLUMN "public"."t_user_info"."intro" IS '用户简介';
COMMENT ON COLUMN "public"."t_user_info"."website" IS '个人网站';
COMMENT ON COLUMN "public"."t_user_info"."is_subscribe" IS '是否订阅';
COMMENT ON COLUMN "public"."t_user_info"."is_disable" IS '是否禁用';
COMMENT ON COLUMN "public"."t_user_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_user_info"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_user_info
-- ----------------------------
INSERT INTO "public"."t_user_info" OVERRIDING SYSTEM VALUE VALUES (1, 'admin@163.com', '演示账号', 'https://www.4kbizhi.com/d/file/2023/05/24/small105453OnUEv1684896893.jpg', '简介', 'http://www.test.com', 1, 0, '2022-08-19 21:42:04', '2023-04-11 06:24:29');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user_role";
CREATE TABLE "public"."t_user_role" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "user_id" int4,
  "role_id" int4
)
;
COMMENT ON COLUMN "public"."t_user_role"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."t_user_role"."role_id" IS '角色id';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO "public"."t_user_role" OVERRIDING SYSTEM VALUE VALUES (1, 1, 1);
INSERT INTO "public"."t_user_role" OVERRIDING SYSTEM VALUE VALUES (3, 5, 2);

-- ----------------------------
-- Table structure for t_website_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_website_config";
CREATE TABLE "public"."t_website_config" (
  "id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "config" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_website_config"."config" IS '配置信息';
COMMENT ON COLUMN "public"."t_website_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_website_config"."update_time" IS '更新时间';

-- ----------------------------
-- Records of t_website_config
-- ----------------------------
INSERT INTO "public"."t_website_config" OVERRIDING SYSTEM VALUE VALUES (1, '{"alipayQRCode":"https://static.linhaojun.top/config/da4c6d8c13f66a8dd6716ddb48d73299.jpg","author":"演示账号","authorAvatar":"https://www.4kbizhi.com/d/file/2023/05/24/small105453OnUEv1684896893.jpg","authorIntro":"简介","beianNumber":"","csdn":"","englishName":"name","gitee":"","github":"","isCommentReview":0,"isEmailNotice":1,"isReward":1,"juejin":"","logo":"https://www.4kbizhi.com/d/file/2023/05/24/small105453OnUEv1684896893.jpg","multiLanguage":1,"name":"演示","notice":"testing~","qq":"","qqLogin":0,"stackoverflow":"","touristAvatar":"https://static.linhaojun.top/config/2af2e2db20740e712f0a011a6f8c9af5.jpg","twitter":"","userAvatar":"https://static.linhaojun.top/config/0af1901da1e64dfb99bb61db21e716c4.jpeg","weChat":"","websiteCreateTime":"2023-01-25","weiXinQRCode":"https://static.linhaojun.top/config/ed47edae605f74306f751c6fba9f14bd.png","weibo":"","zhihu":""}', '2022-07-24 12:05:33', '2023-03-07 19:43:45');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_about_id_seq"
OWNED BY "public"."t_about"."id";
SELECT setval('"public"."t_about_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_about_id_seq1"
OWNED BY "public"."t_about"."id";
SELECT setval('"public"."t_about_id_seq1"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_about_id_seq2"
OWNED BY "public"."t_about"."id";
SELECT setval('"public"."t_about_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_article_id_seq"
OWNED BY "public"."t_article"."id";
SELECT setval('"public"."t_article_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_article_id_seq1"
OWNED BY "public"."t_article"."id";
SELECT setval('"public"."t_article_id_seq1"', 143, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_article_id_seq2"
OWNED BY "public"."t_article"."id";
SELECT setval('"public"."t_article_id_seq2"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_article_tag_id_seq"
OWNED BY "public"."t_article_tag"."id";
SELECT setval('"public"."t_article_tag_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_article_tag_id_seq1"
OWNED BY "public"."t_article_tag"."id";
SELECT setval('"public"."t_article_tag_id_seq1"', 129, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_article_tag_id_seq2"
OWNED BY "public"."t_article_tag"."id";
SELECT setval('"public"."t_article_tag_id_seq2"', 18, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_category_id_seq"
OWNED BY "public"."t_category"."id";
SELECT setval('"public"."t_category_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_category_id_seq1"
OWNED BY "public"."t_category"."id";
SELECT setval('"public"."t_category_id_seq1"', 220, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_category_id_seq2"
OWNED BY "public"."t_category"."id";
SELECT setval('"public"."t_category_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_comment_id_seq"
OWNED BY "public"."t_comment"."id";
SELECT setval('"public"."t_comment_id_seq"', 68, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_comment_id_seq1"
OWNED BY "public"."t_comment"."id";
SELECT setval('"public"."t_comment_id_seq1"', 67, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_comment_id_seq2"
OWNED BY "public"."t_comment"."id";
SELECT setval('"public"."t_comment_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_exception_log_id_seq"
OWNED BY "public"."t_exception_log"."id";
SELECT setval('"public"."t_exception_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_exception_log_id_seq1"
OWNED BY "public"."t_exception_log"."id";
SELECT setval('"public"."t_exception_log_id_seq1"', 44, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_exception_log_id_seq2"
OWNED BY "public"."t_exception_log"."id";
SELECT setval('"public"."t_exception_log_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_friend_link_id_seq"
OWNED BY "public"."t_friend_link"."id";
SELECT setval('"public"."t_friend_link_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_friend_link_id_seq1"
OWNED BY "public"."t_friend_link"."id";
SELECT setval('"public"."t_friend_link_id_seq1"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_friend_link_id_seq2"
OWNED BY "public"."t_friend_link"."id";
SELECT setval('"public"."t_friend_link_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_id_seq"
OWNED BY "public"."t_job"."id";
SELECT setval('"public"."t_job_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_id_seq1"
OWNED BY "public"."t_job"."id";
SELECT setval('"public"."t_job_id_seq1"', 86, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_id_seq2"
OWNED BY "public"."t_job"."id";
SELECT setval('"public"."t_job_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_log_id_seq"
OWNED BY "public"."t_job_log"."id";
SELECT setval('"public"."t_job_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_log_id_seq1"
OWNED BY "public"."t_job_log"."id";
SELECT setval('"public"."t_job_log_id_seq1"', 6260, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_log_id_seq2"
OWNED BY "public"."t_job_log"."id";
SELECT setval('"public"."t_job_log_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_menu_id_seq"
OWNED BY "public"."t_menu"."id";
SELECT setval('"public"."t_menu_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_menu_id_seq1"
OWNED BY "public"."t_menu"."id";
SELECT setval('"public"."t_menu_id_seq1"', 226, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_menu_id_seq2"
OWNED BY "public"."t_menu"."id";
SELECT setval('"public"."t_menu_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_operation_log_id_seq"
OWNED BY "public"."t_operation_log"."id";
SELECT setval('"public"."t_operation_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_operation_log_id_seq1"
OWNED BY "public"."t_operation_log"."id";
SELECT setval('"public"."t_operation_log_id_seq1"', 1750, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_operation_log_id_seq2"
OWNED BY "public"."t_operation_log"."id";
SELECT setval('"public"."t_operation_log_id_seq2"', 15, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_photo_album_id_seq"
OWNED BY "public"."t_photo_album"."id";
SELECT setval('"public"."t_photo_album_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_photo_album_id_seq1"
OWNED BY "public"."t_photo_album"."id";
SELECT setval('"public"."t_photo_album_id_seq1"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_photo_album_id_seq2"
OWNED BY "public"."t_photo_album"."id";
SELECT setval('"public"."t_photo_album_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_photo_id_seq"
OWNED BY "public"."t_photo"."id";
SELECT setval('"public"."t_photo_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_photo_id_seq1"
OWNED BY "public"."t_photo"."id";
SELECT setval('"public"."t_photo_id_seq1"', 75, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_photo_id_seq2"
OWNED BY "public"."t_photo"."id";
SELECT setval('"public"."t_photo_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_resource_id_seq"
OWNED BY "public"."t_resource"."id";
SELECT setval('"public"."t_resource_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_resource_id_seq1"
OWNED BY "public"."t_resource"."id";
SELECT setval('"public"."t_resource_id_seq1"', 1189, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_resource_id_seq2"
OWNED BY "public"."t_resource"."id";
SELECT setval('"public"."t_resource_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_id_seq"
OWNED BY "public"."t_role"."id";
SELECT setval('"public"."t_role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_id_seq1"
OWNED BY "public"."t_role"."id";
SELECT setval('"public"."t_role_id_seq1"', 15, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_id_seq2"
OWNED BY "public"."t_role"."id";
SELECT setval('"public"."t_role_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_menu_id_seq"
OWNED BY "public"."t_role_menu"."id";
SELECT setval('"public"."t_role_menu_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_menu_id_seq1"
OWNED BY "public"."t_role_menu"."id";
SELECT setval('"public"."t_role_menu_id_seq1"', 2886, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_menu_id_seq2"
OWNED BY "public"."t_role_menu"."id";
SELECT setval('"public"."t_role_menu_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_resource_id_seq"
OWNED BY "public"."t_role_resource"."id";
SELECT setval('"public"."t_role_resource_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_resource_id_seq1"
OWNED BY "public"."t_role_resource"."id";
SELECT setval('"public"."t_role_resource_id_seq1"', 5547, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_resource_id_seq2"
OWNED BY "public"."t_role_resource"."id";
SELECT setval('"public"."t_role_resource_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_tag_id_seq"
OWNED BY "public"."t_tag"."id";
SELECT setval('"public"."t_tag_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_tag_id_seq1"
OWNED BY "public"."t_tag"."id";
SELECT setval('"public"."t_tag_id_seq1"', 51, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_tag_id_seq2"
OWNED BY "public"."t_tag"."id";
SELECT setval('"public"."t_tag_id_seq2"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_talk_id_seq"
OWNED BY "public"."t_talk"."id";
SELECT setval('"public"."t_talk_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_talk_id_seq1"
OWNED BY "public"."t_talk"."id";
SELECT setval('"public"."t_talk_id_seq1"', 70, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_talk_id_seq2"
OWNED BY "public"."t_talk"."id";
SELECT setval('"public"."t_talk_id_seq2"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_unique_view_id_seq"
OWNED BY "public"."t_unique_view"."id";
SELECT setval('"public"."t_unique_view_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_unique_view_id_seq1"
OWNED BY "public"."t_unique_view"."id";
SELECT setval('"public"."t_unique_view_id_seq1"', 1540, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_unique_view_id_seq2"
OWNED BY "public"."t_unique_view"."id";
SELECT setval('"public"."t_unique_view_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_auth_id_seq"
OWNED BY "public"."t_user_auth"."id";
SELECT setval('"public"."t_user_auth_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_auth_id_seq1"
OWNED BY "public"."t_user_auth"."id";
SELECT setval('"public"."t_user_auth_id_seq1"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_auth_id_seq2"
OWNED BY "public"."t_user_auth"."id";
SELECT setval('"public"."t_user_auth_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_info_id_seq"
OWNED BY "public"."t_user_info"."id";
SELECT setval('"public"."t_user_info_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_info_id_seq1"
OWNED BY "public"."t_user_info"."id";
SELECT setval('"public"."t_user_info_id_seq1"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_info_id_seq2"
OWNED BY "public"."t_user_info"."id";
SELECT setval('"public"."t_user_info_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_role_id_seq"
OWNED BY "public"."t_user_role"."id";
SELECT setval('"public"."t_user_role_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_role_id_seq1"
OWNED BY "public"."t_user_role"."id";
SELECT setval('"public"."t_user_role_id_seq1"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_role_id_seq2"
OWNED BY "public"."t_user_role"."id";
SELECT setval('"public"."t_user_role_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_website_config_id_seq"
OWNED BY "public"."t_website_config"."id";
SELECT setval('"public"."t_website_config_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_website_config_id_seq1"
OWNED BY "public"."t_website_config"."id";
SELECT setval('"public"."t_website_config_id_seq1"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_website_config_id_seq2"
OWNED BY "public"."t_website_config"."id";
SELECT setval('"public"."t_website_config_id_seq2"', 1, false);

-- ----------------------------
-- Auto increment value for t_about
-- ----------------------------
SELECT setval('"public"."t_about_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_about
-- ----------------------------
ALTER TABLE "public"."t_about" ADD CONSTRAINT "t_about_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_article
-- ----------------------------
SELECT setval('"public"."t_article_id_seq2"', 8, true);

-- ----------------------------
-- Primary Key structure for table t_article
-- ----------------------------
ALTER TABLE "public"."t_article" ADD CONSTRAINT "_copy_23" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_article_tag
-- ----------------------------
SELECT setval('"public"."t_article_tag_id_seq2"', 18, true);

-- ----------------------------
-- Indexes structure for table t_article_tag
-- ----------------------------
CREATE INDEX "fk_article_tag_1" ON "public"."t_article_tag" USING btree (
  "article_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "fk_article_tag_2" ON "public"."t_article_tag" USING btree (
  "tag_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_article_tag
-- ----------------------------
ALTER TABLE "public"."t_article_tag" ADD CONSTRAINT "_copy_22" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_category
-- ----------------------------
SELECT setval('"public"."t_category_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_category
-- ----------------------------
ALTER TABLE "public"."t_category" ADD CONSTRAINT "_copy_21" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_comment
-- ----------------------------
SELECT setval('"public"."t_comment_id_seq2"', 1, false);

-- ----------------------------
-- Indexes structure for table t_comment
-- ----------------------------
CREATE INDEX "fk_comment_parent" ON "public"."t_comment" USING btree (
  "parent_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "fk_comment_user" ON "public"."t_comment" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_comment
-- ----------------------------
ALTER TABLE "public"."t_comment" ADD CONSTRAINT "_copy_20" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_exception_log
-- ----------------------------
SELECT setval('"public"."t_exception_log_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_exception_log
-- ----------------------------
ALTER TABLE "public"."t_exception_log" ADD CONSTRAINT "_copy_19" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_friend_link
-- ----------------------------
SELECT setval('"public"."t_friend_link_id_seq2"', 1, false);

-- ----------------------------
-- Indexes structure for table t_friend_link
-- ----------------------------
CREATE INDEX "fk_friend_link_user" ON "public"."t_friend_link" USING btree (
  "link_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_friend_link
-- ----------------------------
ALTER TABLE "public"."t_friend_link" ADD CONSTRAINT "_copy_18" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_job
-- ----------------------------
SELECT setval('"public"."t_job_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_job
-- ----------------------------
ALTER TABLE "public"."t_job" ADD CONSTRAINT "_copy_17" PRIMARY KEY ("id", "job_name", "job_group");

-- ----------------------------
-- Auto increment value for t_job_log
-- ----------------------------
SELECT setval('"public"."t_job_log_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_job_log
-- ----------------------------
ALTER TABLE "public"."t_job_log" ADD CONSTRAINT "_copy_16" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_menu
-- ----------------------------
SELECT setval('"public"."t_menu_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_menu
-- ----------------------------
ALTER TABLE "public"."t_menu" ADD CONSTRAINT "_copy_15" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_operation_log
-- ----------------------------
SELECT setval('"public"."t_operation_log_id_seq2"', 15, true);

-- ----------------------------
-- Primary Key structure for table t_operation_log
-- ----------------------------
ALTER TABLE "public"."t_operation_log" ADD CONSTRAINT "_copy_14" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_photo
-- ----------------------------
SELECT setval('"public"."t_photo_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_photo
-- ----------------------------
ALTER TABLE "public"."t_photo" ADD CONSTRAINT "_copy_13" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_photo_album
-- ----------------------------
SELECT setval('"public"."t_photo_album_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_photo_album
-- ----------------------------
ALTER TABLE "public"."t_photo_album" ADD CONSTRAINT "_copy_12" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_resource
-- ----------------------------
SELECT setval('"public"."t_resource_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_resource
-- ----------------------------
ALTER TABLE "public"."t_resource" ADD CONSTRAINT "_copy_11" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_role
-- ----------------------------
SELECT setval('"public"."t_role_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_role
-- ----------------------------
ALTER TABLE "public"."t_role" ADD CONSTRAINT "_copy_10" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_role_menu
-- ----------------------------
SELECT setval('"public"."t_role_menu_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_role_menu
-- ----------------------------
ALTER TABLE "public"."t_role_menu" ADD CONSTRAINT "_copy_9" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_role_resource
-- ----------------------------
SELECT setval('"public"."t_role_resource_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_role_resource
-- ----------------------------
ALTER TABLE "public"."t_role_resource" ADD CONSTRAINT "_copy_8" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_tag
-- ----------------------------
SELECT setval('"public"."t_tag_id_seq2"', 4, true);

-- ----------------------------
-- Primary Key structure for table t_tag
-- ----------------------------
ALTER TABLE "public"."t_tag" ADD CONSTRAINT "_copy_7" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_talk
-- ----------------------------
SELECT setval('"public"."t_talk_id_seq2"', 16, true);

-- ----------------------------
-- Primary Key structure for table t_talk
-- ----------------------------
ALTER TABLE "public"."t_talk" ADD CONSTRAINT "_copy_6" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_unique_view
-- ----------------------------
SELECT setval('"public"."t_unique_view_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_unique_view
-- ----------------------------
ALTER TABLE "public"."t_unique_view" ADD CONSTRAINT "_copy_5" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_user_auth
-- ----------------------------
SELECT setval('"public"."t_user_auth_id_seq2"', 1, false);

-- ----------------------------
-- Indexes structure for table t_user_auth
-- ----------------------------
CREATE UNIQUE INDEX "username" ON "public"."t_user_auth" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_user_auth
-- ----------------------------
ALTER TABLE "public"."t_user_auth" ADD CONSTRAINT "_copy_4" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_user_info
-- ----------------------------
SELECT setval('"public"."t_user_info_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_user_info
-- ----------------------------
ALTER TABLE "public"."t_user_info" ADD CONSTRAINT "_copy_3" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_user_role
-- ----------------------------
SELECT setval('"public"."t_user_role_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_user_role
-- ----------------------------
ALTER TABLE "public"."t_user_role" ADD CONSTRAINT "_copy_2" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for t_website_config
-- ----------------------------
SELECT setval('"public"."t_website_config_id_seq2"', 1, false);

-- ----------------------------
-- Primary Key structure for table t_website_config
-- ----------------------------
ALTER TABLE "public"."t_website_config" ADD CONSTRAINT "_copy_1" PRIMARY KEY ("id");
