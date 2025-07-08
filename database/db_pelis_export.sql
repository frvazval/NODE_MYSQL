CREATE DATABASE  IF NOT EXISTS `db_pelis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_pelis`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pelis
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `directores`
--

DROP TABLE IF EXISTS `directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directores` (
  `id_director` int NOT NULL AUTO_INCREMENT,
  `nombre_director` varchar(255) NOT NULL,
  PRIMARY KEY (`id_director`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES (1,'George Lucas'),(2,'Christopher Nolan'),(3,'Martin Scorsese'),(4,'Francis Ford Coppola');
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Drama'),(2,'Comedia'),(3,'Aventuras'),(4,'Fantastica'),(5,'Ciencia Ficcion'),(6,'Terror'),(7,'Romantica'),(8,'Suspense'),(9,'Historica');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelis`
--

DROP TABLE IF EXISTS `pelis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelis` (
  `id_peli` int NOT NULL AUTO_INCREMENT,
  `titulo_peli` varchar(200) NOT NULL,
  `fecha` int NOT NULL,
  `id_director` int NOT NULL,
  `imagen_peli` text,
  `valoracion` decimal(3,1) unsigned NOT NULL,
  `sinopsis` text,
  PRIMARY KEY (`id_peli`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelis`
--

LOCK TABLES `pelis` WRITE;
/*!40000 ALTER TABLE `pelis` DISABLE KEYS */;
INSERT INTO `pelis` VALUES (1,'La guerra de las galaxias',1977,1,'https://pics.filmaffinity.com/star_wars-166209019-large.jpg',7.9,'La princesa Leia, líder del movimiento rebelde que desea reinstaurar la República en la galaxia en los tiempos ominosos del Imperio, es capturada por las Fuerzas Imperiales, capitaneadas por el implacable Darth Vader, el sirviente más fiel del Emperador. El intrépido y joven Luke Skywalker, ayudado por Han Solo, capitán de la nave espacial \"El Halcón Milenario\", y los androides, R2D2 y C3PO, serán los encargados de luchar contra el enemigo e intentar rescatar a la princesa para volver a instaurar la justicia en el seno de la galaxia. '),(2,'Inception',2010,2,'https://pics.filmaffinity.com/inception-652954101-large.jpg',8.0,'Dom Cobb (DiCaprio) es un experto en el arte de apropiarse, durante el sueño, de los secretos del subconsciente ajeno. La extraña habilidad de Cobb le ha convertido en un hombre muy cotizado en el mundo del espionaje, pero también lo ha condenado a ser un fugitivo y, por consiguiente, a renunciar a llevar una vida normal. Su única oportunidad para cambiar de vida será hacer exactamente lo contrario de lo que ha hecho siempre: la incepción, que consiste en implantar una idea en el subconsciente en lugar de sustraerla. Sin embargo, su plan se complica debido a la intervención de alguien que parece predecir cada uno de sus movimientos, alguien a quien sólo Cobb podrá descubrir. '),(3,'Interstellar',2014,2,'https://pics.filmaffinity.com/interstellar-366875261-large.jpg',7.9,'Al ver que la vida en la Tierra está llegando a su fin, un grupo de exploradores dirigidos por el piloto Cooper (McConaughey) y la científica Amelia (Hathaway) emprende una misión que puede ser la más importante de la historia de la humanidad: viajar más allá de nuestra galaxia para descubrir algún planeta en otra que pueda garantizar el futuro de la raza humana.'),(4,'Infiltrados',2006,3,'https://pics.filmaffinity.com/the_departed-749477966-large.jpg',7.9,'El Departamento de Policía de Massachussets se enfrenta a la mayor banda de crimen organizado de la ciudad de Boston. La estrategia consiste en acabar desde dentro con Frank Costello, el poderoso jefe de la mafia irlandesa (Jack Nicholson). El encargado de infiltrarse en la banda es un joven novato, Billy Costigan (Leonardo DiCaprio). Mientras Billy intenta ganarse la confianza de Costello, otro joven policía, Colin Sullivan (Matt Damon), sube rápidamente de categoría y ocupa un puesto en la unidad de Investigaciones Especiales, grupo de élite cuya misión también es acabar con Costello. Lo que nadie sabe es que Colin es un topo infiltrado en la policía por el propio Costello. '),(5,'El padrino',1972,4,'https://pics.filmaffinity.com/the_godfather-488102675-large.jpg',9.0,'América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York. Tiene cuatro hijos: Connie (Talia Shire), el impulsivo Sonny (James Caan), el pusilánime Fredo (John Cazale) y Michael (Al Pacino), que no quiere saber nada de los negocios de su padre. Cuando Corleone, en contra de los consejos de \'Il consigliere\' Tom Hagen (Robert Duvall), se niega a participar en el negocio de las drogas, el jefe de otra banda ordena su asesinato. Empieza entonces una violenta y cruenta guerra entre las familias mafiosas.');
/*!40000 ALTER TABLE `pelis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelis_generos`
--

DROP TABLE IF EXISTS `pelis_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelis_generos` (
  `id_peli_genero` int NOT NULL AUTO_INCREMENT,
  `id_peli` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id_peli_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelis_generos`
--

LOCK TABLES `pelis_generos` WRITE;
/*!40000 ALTER TABLE `pelis_generos` DISABLE KEYS */;
INSERT INTO `pelis_generos` VALUES (1,1,3),(2,1,4),(3,1,5),(4,2,5),(5,2,4),(6,2,8),(7,3,5),(8,3,1),(9,4,1),(10,4,8),(11,5,8),(12,5,1);
/*!40000 ALTER TABLE `pelis_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_pelis'
--

--
-- Dumping routines for database 'db_pelis'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-08 15:38:35
