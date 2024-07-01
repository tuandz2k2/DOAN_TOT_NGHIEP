-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tttn
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accuse`
--

DROP TABLE IF EXISTS `accuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accuse` (
  `is_processed` bit(1) NOT NULL,
  `date_accuse` datetime(6) DEFAULT NULL,
  `id_post` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_post`,`id_user`),
  KEY `FKruej19unj3s2h5ocst1264ny1` (`id_user`),
  CONSTRAINT `FKgfvf1lnmf5vbjt3a00rfhfeog` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `FKruej19unj3s2h5ocst1264ny1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accuse`
--

LOCK TABLES `accuse` WRITE;
/*!40000 ALTER TABLE `accuse` DISABLE KEYS */;
/*!40000 ALTER TABLE `accuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_room` (
  `create_date` datetime(6) DEFAULT NULL,
  `id_chat_room` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_chat_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `is_public` bit(1) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_interact` bigint DEFAULT NULL,
  `id_post` bigint DEFAULT NULL,
  `id_user` bigint DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbjvp3gtymx00dpqxo1swrkbqn` (`id_interact`),
  KEY `FK5d3jnie61rlb5an9r4hm9wq9n` (`id_post`),
  KEY `FKiuf9gwufew9y31h0rql66f9w9` (`id_user`),
  CONSTRAINT `FK5d3jnie61rlb5an9r4hm9wq9n` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `FKbjvp3gtymx00dpqxo1swrkbqn` FOREIGN KEY (`id_interact`) REFERENCES `interact` (`id_interact`),
  CONSTRAINT `FKiuf9gwufew9y31h0rql66f9w9` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupp`
--

DROP TABLE IF EXISTS `groupp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupp` (
  `is_public` bit(1) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `id_groups` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupp`
--

LOCK TABLES `groupp` WRITE;
/*!40000 ALTER TABLE `groupp` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_post` bigint DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfu33yyd0ooyym34y104rbwwi9` (`id_post`),
  CONSTRAINT `FKfu33yyd0ooyym34y104rbwwi9` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interact`
--

DROP TABLE IF EXISTS `interact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interact` (
  `create_date` datetime(6) DEFAULT NULL,
  `id_comment` bigint DEFAULT NULL,
  `id_interact` bigint NOT NULL AUTO_INCREMENT,
  `id_post` bigint DEFAULT NULL,
  `id_user` bigint DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_interact`),
  KEY `FKkyr3puvr35btqcbkw1cpbvfh0` (`id_comment`),
  KEY `FK67pgffh00k2jk2f8cgx4ygmgm` (`id_post`),
  KEY `FK87g24xaw9u85fxkiwcrn9uifa` (`id_user`),
  CONSTRAINT `FK67pgffh00k2jk2f8cgx4ygmgm` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `FK87g24xaw9u85fxkiwcrn9uifa` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `FKkyr3puvr35btqcbkw1cpbvfh0` FOREIGN KEY (`id_comment`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interact`
--

LOCK TABLES `interact` WRITE;
/*!40000 ALTER TABLE `interact` DISABLE KEYS */;
/*!40000 ALTER TABLE `interact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_chat_room`
--

DROP TABLE IF EXISTS `join_chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_chat_room` (
  `is_admin` bit(1) NOT NULL,
  `status_join` bit(1) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_chat_room` bigint DEFAULT NULL,
  `id_user` bigint DEFAULT NULL,
  `time_join` datetime(6) DEFAULT NULL,
  `time_leave` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkwk4v6yiy5qht2pqkie5wyul9` (`id_chat_room`),
  KEY `FKcah0dmdlxqu55e0s69np4ljf8` (`id_user`),
  CONSTRAINT `FKcah0dmdlxqu55e0s69np4ljf8` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `FKkwk4v6yiy5qht2pqkie5wyul9` FOREIGN KEY (`id_chat_room`) REFERENCES `chat_room` (`id_chat_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_chat_room`
--

LOCK TABLES `join_chat_room` WRITE;
/*!40000 ALTER TABLE `join_chat_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_chat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_group`
--

DROP TABLE IF EXISTS `join_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_group` (
  `is_admin` bit(1) NOT NULL,
  `is_processed` bit(1) NOT NULL,
  `status_join` bit(1) NOT NULL,
  `id_groups` bigint DEFAULT NULL,
  `id_join_group` bigint NOT NULL AUTO_INCREMENT,
  `id_user` bigint DEFAULT NULL,
  `time_join` datetime(6) DEFAULT NULL,
  `time_leave` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id_join_group`),
  KEY `FKo42hvbthv0ricmo1ahsy2ayl2` (`id_groups`),
  KEY `FKj2ddprcr1ckjxjddqupiq0eyf` (`id_user`),
  CONSTRAINT `FKj2ddprcr1ckjxjddqupiq0eyf` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `FKo42hvbthv0ricmo1ahsy2ayl2` FOREIGN KEY (`id_groups`) REFERENCES `groupp` (`id_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_group`
--

LOCK TABLES `join_group` WRITE;
/*!40000 ALTER TABLE `join_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id_join_chat_room` bigint DEFAULT NULL,
  `id_message` bigint NOT NULL AUTO_INCREMENT,
  `content_message` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_message`),
  KEY `FK4a7tuqa94qdt2e97na6t0jqui` (`id_join_chat_room`),
  CONSTRAINT `FK4a7tuqa94qdt2e97na6t0jqui` FOREIGN KEY (`id_join_chat_room`) REFERENCES `join_chat_room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `status` bit(1) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `id_comment` bigint DEFAULT NULL,
  `id_message` bigint DEFAULT NULL,
  `id_notification` bigint NOT NULL AUTO_INCREMENT,
  `id_post` bigint DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_notification`),
  KEY `FK5wg12uv249luf0gycpokig4uv` (`id_comment`),
  KEY `FKr13vak7ebargufch8fh0xkc2r` (`id_message`),
  KEY `FKtkhkhi5cm3yv9abbnxiqe5ead` (`id_post`),
  CONSTRAINT `FK5wg12uv249luf0gycpokig4uv` FOREIGN KEY (`id_comment`) REFERENCES `comment` (`id`),
  CONSTRAINT `FKr13vak7ebargufch8fh0xkc2r` FOREIGN KEY (`id_message`) REFERENCES `messages` (`id_message`),
  CONSTRAINT `FKtkhkhi5cm3yv9abbnxiqe5ead` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `is_allow_comment` bit(1) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `id_join_group` bigint DEFAULT NULL,
  `id_post` bigint NOT NULL AUTO_INCREMENT,
  `id_user` bigint DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `FKo8sw3oujwdeyiuf8oaysr98v7` (`id_join_group`),
  KEY `FK3n2i1j8bfx7d7ac00iohhimul` (`id_user`),
  CONSTRAINT `FK3n2i1j8bfx7d7ac00iohhimul` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `FKo8sw3oujwdeyiuf8oaysr98v7` FOREIGN KEY (`id_join_group`) REFERENCES `join_group` (`id_join_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_ship`
--

DROP TABLE IF EXISTS `relation_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_ship` (
  `is_blocked` bit(1) NOT NULL,
  `is_friend` bit(1) NOT NULL,
  `is_sended_friend` bit(1) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `id_relation_ship` bigint NOT NULL AUTO_INCREMENT,
  `id_user_1` bigint DEFAULT NULL,
  `id_user_2` bigint DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_relation_ship`),
  KEY `FK9ivj3m7fta48o5pyc13qncub9` (`id_user_1`),
  KEY `FK5ka1yyfu1xwlq6f1fvvac0vqc` (`id_user_2`),
  CONSTRAINT `FK5ka1yyfu1xwlq6f1fvvac0vqc` FOREIGN KEY (`id_user_2`) REFERENCES `users` (`id`),
  CONSTRAINT `FK9ivj3m7fta48o5pyc13qncub9` FOREIGN KEY (`id_user_1`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_ship`
--

LOCK TABLES `relation_ship` WRITE;
/*!40000 ALTER TABLE `relation_ship` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation_ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `active` bit(1) NOT NULL,
  `status` bit(1) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `dat_ofbirth` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_post` bigint DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3kx0hwc2pd7vphxeqibffyl7j` (`id_post`),
  CONSTRAINT `FK3kx0hwc2pd7vphxeqibffyl7j` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-05 14:53:05
