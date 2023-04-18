/*
 Navicat Premium Data Transfer

 Source Server         : MyDB
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : softwaresys

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 17/04/2023 18:24:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `student_id` int NULL DEFAULT NULL,
  `student_role` int NULL DEFAULT NULL,
  `student_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `teacher_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (123456, 2, '数据结构', 1, 1, 'student', 'admin');
INSERT INTO `course` VALUES (123456, 2, '数据结构', 3, 1, 'Rachel', 'admin');

-- ----------------------------
-- Table structure for live_course
-- ----------------------------
DROP TABLE IF EXISTS `live_course`;
CREATE TABLE `live_course`  (
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `start_time` date NULL DEFAULT NULL,
  `end_time` date NULL DEFAULT NULL,
  `cover` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of live_course
-- ----------------------------

-- ----------------------------
-- Table structure for signtable
-- ----------------------------
DROP TABLE IF EXISTS `signtable`;
CREATE TABLE `signtable`  (
  `teacher_id` int NOT NULL,
  `token` int NOT NULL,
  `publish_time` datetime NULL DEFAULT NULL,
  `record_id` int NULL DEFAULT NULL,
  `course_id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of signtable
-- ----------------------------
INSERT INTO `signtable` VALUES (2, 2730, '2023-04-14 15:26:27', 77696, 123456);
INSERT INTO `signtable` VALUES (2, 5020, '2023-04-14 15:29:45', 26523, 123456);
INSERT INTO `signtable` VALUES (2, 8830, '2023-04-14 15:31:56', 84170, 123456);
INSERT INTO `signtable` VALUES (2, 7198, '2023-04-14 15:40:00', 32910, 123456);
INSERT INTO `signtable` VALUES (2, 8481, '2023-04-14 15:48:11', 76659, 123456);
INSERT INTO `signtable` VALUES (2, 9406, '2023-04-14 15:53:59', 16642, 123456);
INSERT INTO `signtable` VALUES (2, 8424, '2023-04-14 15:59:05', 67239, 123456);
INSERT INTO `signtable` VALUES (2, 4561, '2023-04-14 16:00:46', 52803, 123456);
INSERT INTO `signtable` VALUES (2, 8377, '2023-04-14 16:17:18', 30139, 123456);
INSERT INTO `signtable` VALUES (2, 2455, '2023-04-14 16:42:58', 56892, 123456);
INSERT INTO `signtable` VALUES (2, 2514, '2023-04-14 17:10:58', 18062, 123456);
INSERT INTO `signtable` VALUES (2, 2448, '2023-04-14 17:13:11', 42650, 123456);
INSERT INTO `signtable` VALUES (2, 9640, '2023-04-14 17:18:12', 50391, 123456);
INSERT INTO `signtable` VALUES (2, 1973, '2023-04-14 17:27:58', 98413, 123456);

-- ----------------------------
-- Table structure for studentrecord
-- ----------------------------
DROP TABLE IF EXISTS `studentrecord`;
CREATE TABLE `studentrecord`  (
  `student_id` int NOT NULL,
  `student_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `record_time` datetime NULL DEFAULT NULL,
  `statues` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  `course_id` int NULL DEFAULT NULL,
  `record_id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentrecord
-- ----------------------------
INSERT INTO `studentrecord` VALUES (1, 'student', '2023-04-14 09:07:35', 'TRUE', 1, 123456, 56892);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 56892);
INSERT INTO `studentrecord` VALUES (1, 'student', NULL, 'FALSE', 1, 123456, 56892);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 56892);
INSERT INTO `studentrecord` VALUES (1, 'student', '2023-04-14 17:12:04', 'TRUE', 1, 123456, 18062);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 18062);
INSERT INTO `studentrecord` VALUES (1, 'student', '2023-04-14 17:14:05', 'TRUE', 1, 123456, 42650);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 42650);
INSERT INTO `studentrecord` VALUES (1, 'student', '2023-04-14 17:19:25', 'TRUE', 1, 123456, 50391);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 50391);
INSERT INTO `studentrecord` VALUES (1, 'student', NULL, 'FALSE', 1, 123456, 50391);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 50391);
INSERT INTO `studentrecord` VALUES (1, 'student', '2023-04-17 18:09:26', 'TRUE', 1, 123456, 98413);
INSERT INTO `studentrecord` VALUES (3, 'Rachel', NULL, 'FALSE', 1, 123456, 98413);

-- ----------------------------
-- Table structure for t_exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper`;
CREATE TABLE `t_exam_paper`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subject_id` int NULL DEFAULT NULL,
  `paper_type` int NULL DEFAULT NULL,
  `grade_level` int NULL DEFAULT NULL,
  `score` int NULL DEFAULT NULL,
  `question_count` int NULL DEFAULT NULL,
  `suggest_time` int NULL DEFAULT NULL,
  `limit_start_time` datetime NULL DEFAULT NULL,
  `limit_end_time` datetime NULL DEFAULT NULL,
  `frame_text_content_id` int NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  `task_exam_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_exam_paper
-- ----------------------------
INSERT INTO `t_exam_paper` VALUES (1, 'Test1', 1, 1, 3, 50, 1, 5, NULL, NULL, 2, 2, '2023-03-27 13:29:35', b'0', NULL);

-- ----------------------------
-- Table structure for t_exam_paper_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_answer`;
CREATE TABLE `t_exam_paper_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_paper_id` int NULL DEFAULT NULL,
  `paper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `paper_type` int NULL DEFAULT NULL,
  `subject_id` int NULL DEFAULT NULL,
  `system_score` int NULL DEFAULT NULL,
  `user_score` int NULL DEFAULT NULL,
  `paper_score` int NULL DEFAULT NULL,
  `question_correct` int NULL DEFAULT NULL,
  `question_count` int NULL DEFAULT NULL,
  `do_time` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `task_exam_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_exam_paper_answer
-- ----------------------------
INSERT INTO `t_exam_paper_answer` VALUES (1, 1, 'Test1', 1, 1, 0, 0, 50, 0, 1, 11, 2, 3, '2023-03-27 13:29:59', NULL);
INSERT INTO `t_exam_paper_answer` VALUES (2, 1, 'Test1', 1, 1, 0, 50, 50, 1, 1, 10, 2, 3, '2023-03-27 13:31:23', NULL);

-- ----------------------------
-- Table structure for t_exam_paper_question_customer_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_paper_question_customer_answer`;
CREATE TABLE `t_exam_paper_question_customer_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NULL DEFAULT NULL,
  `exam_paper_id` int NULL DEFAULT NULL,
  `exam_paper_answer_id` int NULL DEFAULT NULL,
  `question_type` int NULL DEFAULT NULL,
  `subject_id` int NULL DEFAULT NULL,
  `customer_score` int NULL DEFAULT NULL,
  `question_score` int NULL DEFAULT NULL,
  `question_text_content_id` int NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `text_content_id` int NULL DEFAULT NULL,
  `do_right` bit(1) NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `item_order` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_exam_paper_question_customer_answer
-- ----------------------------
INSERT INTO `t_exam_paper_question_customer_answer` VALUES (1, 1, 1, 1, 5, 1, 0, 50, 1, NULL, 3, b'0', 3, '2023-03-27 13:29:59', 1);
INSERT INTO `t_exam_paper_question_customer_answer` VALUES (2, 1, 1, 2, 5, 1, 50, 50, 1, NULL, 4, b'1', 3, '2023-03-27 13:31:23', 1);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `send_user_id` int NULL DEFAULT NULL,
  `send_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `send_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `receive_user_count` int NULL DEFAULT NULL,
  `read_count` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (1, '测试1', '记得写试卷啊', '2023-03-27 13:32:46', 2, 'admin', '管理员', 1, 1);

-- ----------------------------
-- Table structure for t_message_user
-- ----------------------------
DROP TABLE IF EXISTS `t_message_user`;
CREATE TABLE `t_message_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_id` int NULL DEFAULT NULL,
  `receive_user_id` int NULL DEFAULT NULL,
  `receive_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `receive_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `readed` bit(1) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `read_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_message_user
-- ----------------------------
INSERT INTO `t_message_user` VALUES (1, 1, 3, 'Rachel', 'Rachel', b'1', '2023-03-27 13:32:46', '2023-03-27 13:33:06');

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_type` int NULL DEFAULT NULL,
  `subject_id` int NULL DEFAULT NULL,
  `score` int NULL DEFAULT NULL,
  `grade_level` int NULL DEFAULT NULL,
  `difficult` int NULL DEFAULT NULL,
  `correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `info_text_content_id` int NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES (1, 5, 1, 50, 3, 3, '秦始皇就是秦始皇', 1, 2, 1, '2023-03-27 13:28:56', b'0');

-- ----------------------------
-- Table structure for t_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `level_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `item_order` int NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_subject
-- ----------------------------
INSERT INTO `t_subject` VALUES (1, '语文', 3, '三年级', NULL, b'0');

-- ----------------------------
-- Table structure for t_task_exam
-- ----------------------------
DROP TABLE IF EXISTS `t_task_exam`;
CREATE TABLE `t_task_exam`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `grade_level` int NULL DEFAULT NULL,
  `frame_text_content_id` int NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  `create_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_task_exam
-- ----------------------------

-- ----------------------------
-- Table structure for t_task_exam_customer_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_task_exam_customer_answer`;
CREATE TABLE `t_task_exam_customer_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_exam_id` int NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `text_content_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_task_exam_customer_answer
-- ----------------------------

-- ----------------------------
-- Table structure for t_text_content
-- ----------------------------
DROP TABLE IF EXISTS `t_text_content`;
CREATE TABLE `t_text_content`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_text_content
-- ----------------------------
INSERT INTO `t_text_content` VALUES (1, '{\"titleContent\":\"<p>秦始皇是谁</p>\",\"analyze\":\"<p>秦始皇就是秦始皇</p>\",\"questionItemObjects\":[],\"correct\":\"秦始皇就是秦始皇\"}', '2023-03-27 13:28:56');
INSERT INTO `t_text_content` VALUES (2, '[{\"name\":\"古代文化常识\",\"questionItems\":[{\"id\":1,\"itemOrder\":1}]}]', '2023-03-27 13:29:35');
INSERT INTO `t_text_content` VALUES (3, '秦始皇', '2023-03-27 13:29:59');
INSERT INTO `t_text_content` VALUES (4, '秦始皇', '2023-03-27 13:31:23');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `birth_day` datetime NULL DEFAULT NULL,
  `user_level` int NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `last_active_time` datetime NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  `wx_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'd2d29da2-dcb3-4013-b874-727626236f47', 'student', 'D1AGFL+Gx37t0NPG4d6biYP5Z31cNbwhK5w1lUeiHB2zagqbk8efYfSjYoh1Z/j1dkiRjHU+b0EpwzCh8IGsksJjzD65ci5LsnodQVf4Uj6D3pwoscXGqmkjjpzvSJbx42swwNTA+QoDU8YLo7JhtbUK2X0qCjFGpd+8eJ5BGvk=', '学生', 18, 1, '2019-09-01 16:00:00', 1, '19171171610', 1, 1, 'rsky2vtxe.hn-bkt.clouddn.com/Fv3Qzv8Zt82fmJhIAxTRgQ29KB_Q', '2019-09-07 18:55:02', '2020-02-04 08:26:54', NULL, b'0', NULL);
INSERT INTO `t_user` VALUES (2, '52045f5f-a13f-4ccc-93dd-f7ee8270ad4c', 'admin', 'D1AGFL+Gx37t0NPG4d6biYP5Z31cNbwhK5w1lUeiHB2zagqbk8efYfSjYoh1Z/j1dkiRjHU+b0EpwzCh8IGsksJjzD65ci5LsnodQVf4Uj6D3pwoscXGqmkjjpzvSJbx42swwNTA+QoDU8YLo7JhtbUK2X0qCjFGpd+8eJ5BGvk=', '管理员', 30, 1, '2019-09-07 18:56:07', NULL, NULL, 3, 1, NULL, '2019-09-07 18:56:21', NULL, NULL, b'0', NULL);
INSERT INTO `t_user` VALUES (3, 'b3415c72-e380-4407-9b2a-a23776bf29b7', 'Rachel', 'LGQYYpDuCyu2xSqGmwc1TdKy0G+zVgK2qOW608dRXMPGm9UsQ+osXLFyRC6E8yVEzG3RTOPlTfLqeRWp2FZq+292/LjssMhb5w1xZte+Dq8liOrxfdjCyO/b6Z4DDIMa2F18CSi6w2Uk1qrEo6orrcri4PCQy9f7vRNM2gPpfYQ=', 'Rachel', 20, 1, '2002-05-17 00:00:00', 3, '13687898384', 1, 1, NULL, '2023-03-27 13:26:39', NULL, '2023-03-27 13:26:39', b'0', NULL);

-- ----------------------------
-- Table structure for t_user_event_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_event_log`;
CREATE TABLE `t_user_event_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user_event_log
-- ----------------------------
INSERT INTO `t_user_event_log` VALUES (1, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-03-24 12:35:45');
INSERT INTO `t_user_event_log` VALUES (2, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-24 12:36:31');
INSERT INTO `t_user_event_log` VALUES (3, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-03-24 12:37:21');
INSERT INTO `t_user_event_log` VALUES (4, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-24 12:37:45');
INSERT INTO `t_user_event_log` VALUES (5, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-27 13:24:55');
INSERT INTO `t_user_event_log` VALUES (6, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-03-27 13:25:03');
INSERT INTO `t_user_event_log` VALUES (7, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-27 13:25:23');
INSERT INTO `t_user_event_log` VALUES (8, 2, 'admin', '管理员', 'admin 登出了学之思开源考试系统', '2023-03-27 13:26:43');
INSERT INTO `t_user_event_log` VALUES (9, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-27 13:26:49');
INSERT INTO `t_user_event_log` VALUES (10, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-27 13:27:02');
INSERT INTO `t_user_event_log` VALUES (11, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-27 13:29:44');
INSERT INTO `t_user_event_log` VALUES (12, 3, 'Rachel', 'Rachel', 'Rachel 提交试卷：Test1 得分：0 耗时：11 秒', '2023-03-27 13:29:59');
INSERT INTO `t_user_event_log` VALUES (13, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-27 13:30:31');
INSERT INTO `t_user_event_log` VALUES (14, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-27 13:31:07');
INSERT INTO `t_user_event_log` VALUES (15, 3, 'Rachel', 'Rachel', 'Rachel 提交试卷：Test1 得分：0 耗时：10 秒', '2023-03-27 13:31:23');
INSERT INTO `t_user_event_log` VALUES (16, 3, 'Rachel', 'Rachel', 'Rachel 批改试卷：Test1 得分：0', '2023-03-27 13:31:30');
INSERT INTO `t_user_event_log` VALUES (17, 3, 'Rachel', 'Rachel', 'Rachel 批改试卷：Test1 得分：5', '2023-03-27 13:31:40');
INSERT INTO `t_user_event_log` VALUES (18, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-27 13:31:56');
INSERT INTO `t_user_event_log` VALUES (19, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-27 13:32:59');
INSERT INTO `t_user_event_log` VALUES (20, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-03-27 13:35:01');
INSERT INTO `t_user_event_log` VALUES (21, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-27 21:30:03');
INSERT INTO `t_user_event_log` VALUES (22, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-28 11:28:03');
INSERT INTO `t_user_event_log` VALUES (23, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-28 16:03:31');
INSERT INTO `t_user_event_log` VALUES (24, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-28 16:08:13');
INSERT INTO `t_user_event_log` VALUES (25, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-03-28 16:20:53');
INSERT INTO `t_user_event_log` VALUES (26, 3, 'Rachel', 'Rachel', 'Rachel 登录了学之思开源考试系统', '2023-04-02 17:23:53');
INSERT INTO `t_user_event_log` VALUES (27, 3, 'Rachel', 'Rachel', 'Rachel 登出了学之思开源考试系统', '2023-04-02 17:27:56');
INSERT INTO `t_user_event_log` VALUES (28, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-02 17:28:02');
INSERT INTO `t_user_event_log` VALUES (29, 1, 'student', '学生', 'student 登出了学之思开源考试系统', '2023-04-02 17:30:25');
INSERT INTO `t_user_event_log` VALUES (30, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-02 17:54:04');
INSERT INTO `t_user_event_log` VALUES (31, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-04 11:40:52');
INSERT INTO `t_user_event_log` VALUES (32, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-04 15:27:36');
INSERT INTO `t_user_event_log` VALUES (33, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-04 15:33:14');
INSERT INTO `t_user_event_log` VALUES (34, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-11 18:57:49');
INSERT INTO `t_user_event_log` VALUES (35, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-11 18:57:55');
INSERT INTO `t_user_event_log` VALUES (36, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-11 18:58:18');
INSERT INTO `t_user_event_log` VALUES (37, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-11 18:58:28');
INSERT INTO `t_user_event_log` VALUES (38, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-11 19:06:17');
INSERT INTO `t_user_event_log` VALUES (39, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-13 20:13:51');
INSERT INTO `t_user_event_log` VALUES (40, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-13 20:37:03');
INSERT INTO `t_user_event_log` VALUES (41, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-13 21:19:54');
INSERT INTO `t_user_event_log` VALUES (42, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-13 21:24:10');
INSERT INTO `t_user_event_log` VALUES (43, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-13 21:26:09');
INSERT INTO `t_user_event_log` VALUES (44, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-13 21:27:44');
INSERT INTO `t_user_event_log` VALUES (45, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-13 21:36:53');
INSERT INTO `t_user_event_log` VALUES (46, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-13 21:42:28');
INSERT INTO `t_user_event_log` VALUES (47, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 12:52:30');
INSERT INTO `t_user_event_log` VALUES (48, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 12:54:30');
INSERT INTO `t_user_event_log` VALUES (49, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 12:56:51');
INSERT INTO `t_user_event_log` VALUES (50, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 13:00:03');
INSERT INTO `t_user_event_log` VALUES (51, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 13:04:01');
INSERT INTO `t_user_event_log` VALUES (52, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 14:15:39');
INSERT INTO `t_user_event_log` VALUES (53, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 14:21:52');
INSERT INTO `t_user_event_log` VALUES (54, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 14:24:34');
INSERT INTO `t_user_event_log` VALUES (55, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 14:27:18');
INSERT INTO `t_user_event_log` VALUES (56, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:06:08');
INSERT INTO `t_user_event_log` VALUES (57, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:08:54');
INSERT INTO `t_user_event_log` VALUES (58, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:09:46');
INSERT INTO `t_user_event_log` VALUES (59, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:25:56');
INSERT INTO `t_user_event_log` VALUES (60, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:27:35');
INSERT INTO `t_user_event_log` VALUES (61, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:28:53');
INSERT INTO `t_user_event_log` VALUES (62, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:29:55');
INSERT INTO `t_user_event_log` VALUES (63, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:31:45');
INSERT INTO `t_user_event_log` VALUES (64, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:32:16');
INSERT INTO `t_user_event_log` VALUES (65, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:39:52');
INSERT INTO `t_user_event_log` VALUES (66, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:40:18');
INSERT INTO `t_user_event_log` VALUES (67, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:47:56');
INSERT INTO `t_user_event_log` VALUES (68, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:48:25');
INSERT INTO `t_user_event_log` VALUES (69, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:50:54');
INSERT INTO `t_user_event_log` VALUES (70, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:54:13');
INSERT INTO `t_user_event_log` VALUES (71, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:57:26');
INSERT INTO `t_user_event_log` VALUES (72, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:58:01');
INSERT INTO `t_user_event_log` VALUES (73, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 15:58:58');
INSERT INTO `t_user_event_log` VALUES (74, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 15:59:14');
INSERT INTO `t_user_event_log` VALUES (75, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 16:00:42');
INSERT INTO `t_user_event_log` VALUES (76, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:01:00');
INSERT INTO `t_user_event_log` VALUES (77, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 16:16:55');
INSERT INTO `t_user_event_log` VALUES (78, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:17:43');
INSERT INTO `t_user_event_log` VALUES (79, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 16:42:44');
INSERT INTO `t_user_event_log` VALUES (80, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:43:09');
INSERT INTO `t_user_event_log` VALUES (81, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:44:30');
INSERT INTO `t_user_event_log` VALUES (82, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:47:37');
INSERT INTO `t_user_event_log` VALUES (83, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:50:48');
INSERT INTO `t_user_event_log` VALUES (84, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 16:53:03');
INSERT INTO `t_user_event_log` VALUES (85, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:09:40');
INSERT INTO `t_user_event_log` VALUES (86, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 17:11:27');
INSERT INTO `t_user_event_log` VALUES (87, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:12:33');
INSERT INTO `t_user_event_log` VALUES (88, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 17:13:24');
INSERT INTO `t_user_event_log` VALUES (89, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:14:19');
INSERT INTO `t_user_event_log` VALUES (90, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:17:41');
INSERT INTO `t_user_event_log` VALUES (91, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 17:19:13');
INSERT INTO `t_user_event_log` VALUES (92, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:20:13');
INSERT INTO `t_user_event_log` VALUES (93, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:27:41');
INSERT INTO `t_user_event_log` VALUES (94, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-14 17:28:13');
INSERT INTO `t_user_event_log` VALUES (95, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-14 17:28:34');
INSERT INTO `t_user_event_log` VALUES (96, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-16 23:25:14');
INSERT INTO `t_user_event_log` VALUES (97, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 10:13:26');
INSERT INTO `t_user_event_log` VALUES (98, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 10:37:26');
INSERT INTO `t_user_event_log` VALUES (99, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 10:49:10');
INSERT INTO `t_user_event_log` VALUES (100, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 11:03:13');
INSERT INTO `t_user_event_log` VALUES (101, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 11:05:51');
INSERT INTO `t_user_event_log` VALUES (102, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 11:09:28');
INSERT INTO `t_user_event_log` VALUES (103, 2, 'admin', '管理员', 'admin 登录了学之思开源考试系统', '2023-04-17 11:19:29');
INSERT INTO `t_user_event_log` VALUES (104, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 11:20:11');
INSERT INTO `t_user_event_log` VALUES (105, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 11:21:10');
INSERT INTO `t_user_event_log` VALUES (106, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 17:54:42');
INSERT INTO `t_user_event_log` VALUES (107, 1, 'student', '学生', 'student 登录了学之思开源考试系统', '2023-04-17 18:09:08');

-- ----------------------------
-- Table structure for t_user_token
-- ----------------------------
DROP TABLE IF EXISTS `t_user_token`;
CREATE TABLE `t_user_token`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `wx_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user_token
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
