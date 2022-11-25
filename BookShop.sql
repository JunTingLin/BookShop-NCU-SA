-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1:3306    Database: bookshop
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (9,'Space of Creation: the Creative Process of Playwriting (Susan Zeder, 2005)','/picture/9-1.jpg','/picture/9-1.jpg','/picture/9-1.jpg',1500,'影像分析寫作-本課程原名「影像分析與寫作」，本年度課程著重媒體與戲劇的分析與創意寫作，立意以「媒體藝術」與「表演藝術」作為應用人文與社會實踐的教學策略，透過業界專業師資的引進，引導學生在藝術創作的實踐中，學習人文運用的技巧以及社會實踐的意義。',10,1),(10,'Perfect English Pernunciation','/picture/10-1.jpg','/picture/10-1.jpg','/picture/10-1.jpg',3000,'語音學與發音-The goal of this class is to enable students to monitor and improve their pronunciation and articulation of English through the study of the principles of English phonetics and the practice of those principles.  ',10,1),(11,'Language Files. 12th Edition. Hope C. Dawson and Michael Phelan (Editors). 2016. Ohio State Press.','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',700,'英語語言學概論-In this course we will cover the fundamentals of linguistics in the key areas of sound (phonetics and phonology), words (morphology), grammar (syntax), meaning (semantics and pragmatics), and some related topics. At the end of the course, the student will have a good understanding of how language is constructed, allowing them to pursue further topics in linguistics.  ',10,1),(12,'Van Herk, G. (2018). What is sociolinguistics? Wiley Blackwell.','/picture/12-1.jpg','/picture/12-1.jpg','/picture/12-1.jpg',1200,'社會語言學-此課程提供社會語言學概述，並會檢視語言如何被使用來標記個人及群體的社會及文化特徵、探討社會語言學變異及社會結構間的關聯。課程中，學生會討論不同社會變因和語言行為間的交互作用、熟悉社會語言學研究方法、收集及分析社會語言學資料。  ',10,1),(13,'The Norton Anthology of English Literature, vol. II (10th ed.)','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',2400,'英國文學III- The goal of this course is to familiarize students with English Romantic literature and Victorian literature. .  ',10,1),(14,'史蒂芬．普拉特 (2018): 《帝國暮色：鴉片戰爭與中國最後盛世的終結》','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',700,'英國殖民現代性-本課程專門為對十八世紀英國文學、殖民主義、帝國主義、歐洲現代性輸出及後殖民文化構成有興趣的同學而設，並對思考文學敘事再現與文化政治的關係、殖民地文化包括香港等，將有助益。  ',10,1),(15,'Leo Tolstoy, Anna Karenina (Rosamund Bartlett translation)','/picture/15-1.jpg','/picture/15-1.jpg','/picture/15-1.jpg',300,'女性主義專題Ａ-本課程立意以「表演藝術」作為社會實踐與人文批判的教學策略，透過業界專業師資的引進，嘗試建立一套表演藝術教學實作教學系統，引導學生在藝術創作的實踐中， 提升自主學習能力並建立跨域合作方法。',10,1),(16,' Stage Management and Theatre Administration, 1993','/picture/16-1.jpg','/picture/16-1.jpg','/picture/16-1.jpg',1200,'文學與劇場-本課程立意以「表演藝術」作為社會實踐與人文批判的教學策略，透過業界專業師資的引進，嘗試建立一套表演藝術教學實作教學系統，引導學生在藝術創作的實踐中， 提升自主學習能力並建立跨域合作方法。',10,1),(18,'Nadine Gordimer, July\'s People (1981)','/picture/18-1.jpg','/picture/18-1.jpg','/picture/18-1.jpg',330,'小說研究- 小說研究：「轉換主體/主題」 課程目標： 1. 如何閱讀虛構敘事 2. 如何閱讀文學與文化批評 3. 如何跨（特定）文類與學科閱讀 4.如何書寫閱讀評析',10,1),(19,'Joan Saslow, Allen Ascher Connectivity level3','/picture/19-1.jpg','/picture/19-1.jpg','/picture/19-1.jpg',750,'大一英文:工程課群-新制大一英文課程目標 CEFR B2 15 Descriptors Listening 聽力',10,1),(20,'英文法只是一些規則而已','/picture/20-1.jpg','/picture/20-1.jpg','/picture/20-1.jpg',400,' 英文文法與習作-學英文要會話、閱讀和寫作並重。想要看的懂、增加談話的內容和寫作的深度，就必須要懂文法。文法不能簡單的看不懂，也不能複雜的鑽牛角尖。本課以student-centered為主。講師會先教授文法規則，再設計活動讓學生能夠理解文法以及能夠馬上運用。',10,1),(21,'Azar, Betty S. & Hagen Stacy A. (2010). Understanding and Using English Grammar. (5th Edition)','/picture/21-1.jpg','/picture/21-1.jpg','/picture/21-1.jpg',575,'英文文法與習作II-本課程重點在於幫助已有初階文法基礎之同學有效複習重要文法句型概念，透過大量的紙筆與開放性口語練習，將重要文法句型概念運用於英文寫作與日常口語會話中。並有助於學生語言能力考試（如托福、多益、全民英檢）文法題型之準備。',10,1),(23,'Market Leader: Business English Course Book','/picture/23-1.jpg','/picture/23-1.jpg','/picture/23-1.jpg',570,'商用英文-本課程幫助學生 1. 習得正式英語。 2. 模擬商務情境，如會議、社交、電話、協商、簡報、面試等。 3. 接觸商務個案及討論商業困境和決策，以提供學生表達觀點、訓練口說應對能力、與他人協同解決問題的機會。 4. 瞭解及分析不同文化的差異，擴大同理心。 5. 培養英語聽力的習慣及自信心。 6. 加強學生商用英語字/詞彙、片語、表達法及句型的建構。  ',10,1),(24,'Skills for Success Listening and Speaking 3 (Oxford)/ 3rd Edition','/picture/24-1.jpg','/picture/24-1.jpg','/picture/24-1.jpg',750,' 中級英文聽力-修完本課程，學生應可： 1 有擷取聽力媒體的大意與內容的能力； 2.給予所聽之內容大意給予適當的回應與正確的轉述 3.決定不同主題所對應的有效筆記方式 4.熟練聽力的基本技巧、技能和策略運用',10,1),(25,'Classical mechanics by John R. Taylor','/picture/25-1.jpg','/picture/25-1.jpg','/picture/25-1.jpg',38,'力學- By analyzing classical mechanical systems with vector calculus and linear algebra, the main objective of this course is to prepare the students for more advanced physics courses.  ',10,2),(26,'Electronics and Instrumentation for Scientists','/picture/26-1.jpg','/picture/26-1.jpg','/picture/26-1.jpg',2100,' 實驗物理與方法I-本課程為物理系學生學習實驗物理的連貫四學期之自趨探索式基礎入門課程，每周於課前預習、分組討論、設計實驗進度細節、撰寫預報，於課堂進行報告討論，配合在實驗室進行各式實驗系統建構與量測，課後進行分析、模型建構與實驗報告撰寫。',10,2),(27,'University Physics, 3rd/2nd revised edition','/picture/27-1.jpg','/picture/27-1.jpg','/picture/27-1.jpg',880,'普通物理A- 了解物理的基本原理和定律熟悉理論推導與應用計算培養學習進階物理的能力  ',10,2),(28,'基本大學物理，第一冊，第四版','/picture/28-1.jpg','/picture/28-1.jpg','/picture/28-1.jpg',260,'普通物理B-了解物理的基本原理和定律 熟悉理論推導與應用計算  ',10,2),(29,'R. Wolfson, Essential University Physics, 4th ed. Volume 1','/picture/29-1.jpg','/picture/29-1.jpg','/picture/29-1.jpg',1600,'普通物理C-簡介、向量及數學工具、運動學、慣性、二維運動、質點力學、功與能、力學能守恆、動量、固態及流體、震盪系統、力學波及聲波、溫度、熱力學第一定律、entropy、熱力學第二定律',10,2),(30,'George B. Arfken, Hans J. Weber and Frank E. Harris, “Mathematical Methods for Physicists”, 7th edition','/picture/30-1.jpg','/picture/30-1.jpg','/picture/30-1.jpg',4200,'應用數學-介紹專業學科所需之數學知識和工具 ，Vector Spaces，Eigenvalue Problems，Ordinary Differential Equations…',10,2),(31,'Astronomy by Fraknoi, Morrison, Wolff','/picture/31-1.jpg','/picture/31-1.jpg','/picture/31-1.jpg',900,'普通天文學Ⅰ-1. 現代天文學簡介2. 座標系、時間與天體命名3. 天體動力學4. 光與輻射5. 可見光望遠鏡6. 其他波段望遠鏡7. 地球與日月8. 恆星I:測量恆星9. 恆星II：靜態的恆星10. 恆星的生與死I:恆星形成11. 恆星的生與死II-演化與死亡12. 緻密天體13. 中子星與脈衝星14. 雙星系統',10,2),(32,'Quantum physics of atoms, molecules, solids, nuclei, and particles by R. Eisberg and R. Resnick, 2nd ed','/picture/32-1.jpg','/picture/32-1.jpg','/picture/32-1.jpg',720,'量子與統計物理-Bosons and fermionsBose-Einstein condensationFermi surfaceLow temperature Fermi gasQuantization of EM fieldBlackbody radiationLattice vibrationTime-dependent perturbationLaserBCS superconductorMeasurement',10,2),(33,'An Introduction to Thermal Physics by D. V. SchroederReferences','/picture/33-1.jpg','/picture/33-1.jpg','/picture/33-1.jpg',1800,'熱物理-The goal of the course is to introduce fundamentals of thermal physics from statistical points of view. The materials in the course help students to establish important concepts in thermal physics, such as entropy, temperature, Boltzmann factor, chemical potential, and distribution function. Those concepts in thermal physics unite the macroscopic world and the microscopic world.  ',10,2),(34,'Observational Astronomy 2nd Edition D. Scott Birney','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',2100,'天文觀測 I-天文觀測 I',10,2),(35,'Optics: Principles and Applications','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',3610,'光學Ｉ-學習光的基本性質，以及光與物質交互作用的機制。  1. 幾何光學2. 波動光學3. 電磁波4. 雙折射5. 色散6. 干涉7. 相干性8. 繞射',10,2),(36,'Classical Field Theory, Electromagnetism and Gravitation\" by Francis E. Low. Wiley Interscience.','/picture/36-1.jpg','/picture/36-1.jpg','/picture/36-1.jpg',3150,'相對論導論-詳細介紹狹義相對論以及相對論性力學和電磁學，並簡介廣義相對論的原理與基本概念。  ',10,2),(37,'Classical electrodynamics (3rd Edition: John Wiley & Sons)Author : J.D. Jackson','/picture/37-1.jpg','/picture/37-1.jpg','/picture/37-1.jpg',3000,'電動力學 Ｉ-課程提供強化數學訓練與充份瞭解古典電動力學以及其相關應用  ',10,2),(38,'Classical Mechanics (3rd ed.) by H. Goldstein, C.P. Poole, & J.L. Safko, (Addison Wesley, 2002)','/picture/38-1.jpg','/picture/38-1.jpg','/picture/38-1.jpg',3330,'古典力學 Ｉ-This is a graduate course on classical mechanics. The material is so fundamental that all graduate students should learn. The goal is to learn the fundamental concepts and theoretical tools in classical mechanics, to describe, formulate and solve physical systems\' dynamical behavior.',10,2),(39,'Condensed Matter Physics (2nd Edition) by Michael P. Marder','/picture/39-1.jpg','/picture/39-1.jpg','/picture/39-1.jpg',3600,'固態物理 Ｉ-As a graduate-level solid state physics course, the primary goal of PH6033/6034 is to prepare graduate (or senior undergraduate) students for future research in condensed matter physics. ',10,2),(40,'Erwin Kreyszig, “Advanced Engineering Mathematics,” 10th Ed','/picture/40-1.jpg','/picture/40-1.jpg','/picture/40-1.jpg',1800,' 工程數學 Ｉ-本課程教學目標主要在於訓練學生解決工程相關問題的數學能力，讓學生能夠從較實務性的工程相關問題和物理問題中，理解它們和數學上的相關性。藉由本課程中學得的數學能力，以解決工程上相關的問題。',10,3),(41,'Optics, 5th Edition, Hecht.','/picture/41-1.jpg','/picture/41-1.jpg','/picture/41-1.jpg',1352,'基礎工程光學I-本課程之目的是希望學生學習光的基本傳播現象，並以幾何光學來探討光在透明介質中傳播的物理現象和光學設計軟體。期望學生能瞭解光的基本現象，能使用高斯幾何光學對基本的光學系統進行理論計算與分析，且可以能認識光學設計軟體並進行簡易的操作。 ',10,3),(42,'J. L. Meriam and L. G. Kraige, Engineering Mechanics: Dynamics, 9th, 2020\"','/picture/42-1.jpg','/picture/42-1.jpg','/picture/42-1.jpg',1548,'動力學- 工程力學為許多工程領域的基礎學科與組成架構之一，為機械系及許多工程學系訂為大學部必修基礎科目，其主要包含靜力學及動力學二大主軸，本課程銜接靜力學課程，授與學生必要的動力學知識，作為日後學習相關進階課程及各式工程應用之用。本課程主要教學目標乃在培養學生在從事相關工程設計與分析時，能具有預測或評估作用力與物體運動關係之能力，藉由學習固體質點及剛體系統受外力作用之力學與運動學原理，來達成此目標。',10,3),(43,'顏鴻森、吳隆庸 著，機構學','/picture/43-1.jpg','/picture/43-1.jpg','/picture/43-1.jpg',551,'機構學-本課程教學目標主要在使學生可以瞭解機構主要的運動基本原理、與組件之間彼此的運動狀況，以及常見機構構造。',10,3),(44,'工程圖學與電腦製圖之關聯，全華圖書，第七版','/picture/44-1.jpg','/picture/44-1.jpg','/picture/44-1.jpg',780,'機械製圖-工程圖學為工程界的重要溝通語言，而工程圖面是規範工程施工或產品的製造、裝配、維修等生產活動的主要的技術文件。因此，機械製圖課程的主要目的即在培養讓學生學習工程界的圖形共同語言，熟悉各種工程投影之製圖及識圖能力，並且能夠運用於機械工程相關產品的構思、分析、設計和製造加工資訊溝通。 具體教學目標如下： 1.遵照 CNS 標準的規定，培養學生以投影法繪製機械相關圖面的能力。',10,3),(45,'工程材料科學原理與應用(2版修訂),李勝隆編著，高立圖書','/picture/45-1.jpg','/picture/45-1.jpg','/picture/45-1.jpg',600,'材料科學-The objective is to present the basic fundamentals on a level appropriate for university students who have completed the freshman calculus, chemistry and physics courses.',10,3),(46,'Yunus Cengel and Michael Boles, Thermodynamics: An Engineering Approach, 9th edition in SI units, McGraw-Hill, 2019. 【東華書局】','/picture/46-1.jpg','/picture/46-1.jpg','/picture/46-1.jpg',1216,'熱力學 II-接續熱力學I，著重在各種動力循環及冷凍循環之分析，應用熱力學基本原理解決理想氣體混合物、非理想氣體混合物、化學反應、燃燒、化學平衡等系統之工程問題。',10,3),(47,'機械設計(第四版)','/picture/47-1.jpg','/picture/47-1.jpg','/picture/47-1.jpg',513,'精密機械設計(I)-旨在教授精密機械系統中所需之材/靜力學、基礎零件設計原理、計算及選用，並以實際案例讓修課同學了解如何進行整個機械系統之設計',10,3),(48,'Modern Physics for Scientists and Engineers','/picture/48-1.jpg','/picture/48-1.jpg','/picture/48-1.jpg',3600,'近代物理導論-本課程將討論自20世紀起物理學的發展與突破，以期同學於往後在進階課程（如量子力學、固態物理等）學習上，能夠先瞭解物理背景。  ',10,3),(49,'電機機械基本原理 5/e，Mc Graw Hill /東華書局Stephen J. Chapman 著，王順忠/陳秋麟 譯','/picture/49-1.jpg','/picture/49-1.jpg','/picture/49-1.jpg',790,'電磁及電動機- 電磁及電動機為一門機電整合的課程，由同學熟知的電生磁、磁生電的觀念，來說明電機機械的基本運作原理',10,3),(50,'Fundamentals of Applied Electromagnetics 7/e','/picture/50-1.jpg','/picture/50-1.jpg','/picture/50-1.jpg',1320,'電磁學- 瞭解｢電磁學｣的基本知識架構，及其在電動力學和材料科技上的相關應用。  ',10,3),(51,'Gerhart/ Munson, Young, and Okiishi`s Fundamentals of Fluid Mechanics SI 9/e, 2021, John Wiley & Sons','/picture/51-1.jpg','/picture/51-1.jpg','/picture/51-1.jpg',1350,'流體力學- 本課程教學目標主要為幫助學生建立流力力場描述與分析流場的基本能力，以數學和物理闡述質量、動量和能量三大守恆定律，使學生具備探討與流體力學相關之工程問題的理論基礎，並能將所學的知識運用於與流體力學相關的工程、環境和生物等領域上。  ',10,3),(52,'大家的日本語初級２','/picture/52-1.jpg','/picture/52-1.jpg','/picture/52-1.jpg',480,'工程日文I-以前期所學之基本句型切入動詞變化，了解動詞各項基本活用後， 以實用日語為學習主軸，培養學習者日常的聽．說．讀．寫基礎，透過對話紮實並強化各項能力。',10,3),(53,'J. R. Barber, \"Intermediate Mechanics of Materials,\" 2nd Edition, Springer, 2011','/picture/53-1.jpg','/picture/53-1.jpg','/picture/53-1.jpg',3150,'中等材力-在基礎的靜力與材料力學課程（ME1006）中，學生已學習了應力與應變的基本觀念，並學習了軸向、彎矩、扭矩、剪切等受力模式的基本應力與應變分析理論。本課程乃銜接基礎材料力學課程，授與學生更深入的材料力學原理',10,3),(54,'Control Systems Engineering, Nise','/picture/54-1.jpg','/picture/54-1.jpg','/picture/54-1.jpg',1580,'自動控制 I-了解控制理論及模擬  ',10,3),(55,'計算機概論(第四版)(Forouzan 4/e)','/picture/55.jpg','/picture/55.jpg','/picture/55.jpg',36,'IM1001-* 計算機概論Ｉ本課程的主要目標在對大一同學介紹與資管領域相關與需要認識的電腦科技， 使同學對這些科技能有基本概念， 以做為未來各個相關課程的基礎。因此，本課程將提供廣度的多領域介紹。為達成上述目標，本課程內容包括：(1)介紹電腦的整體架構，以對電腦有整體概念。',10,4),(56,' Deitel, P. & Deitel, H.   C How To Program with an Introduction to C++, 8th Edition,Pearson.','/picture/56.jpg','/picture/56.jpg','/picture/56.jpg',39,'本課程介紹使用C語言的程式設計，透過這些學習使學生熟悉C語言的語法，了解語義與執行緒，進而具備基本的程式設計觀念和技巧，並培養邏輯性解決問題的能力',10,4),(57,'圖解公司法','/picture/57.jpg','/picture/57.jpg','/picture/57.jpg',299,'以公司法為主軸，從基礎民法、證券交易法等講解企業營運之架構，並輔以會計、投資分析等角度，跨領域理解深層之架構，找出系統架構所產生的可能趨勢與預判結果。上課會以許多實務案例來解釋商事法的各種系統架構現象，實務案例可能會以公開上市櫃股票市場的角度切入，對於股票市場無意瞭解的同學，請謹慎考慮是否要選修本課程。',10,4),(58,' Richard Gilberg, Behrouz Forouzan, Data Structures: A Pseudocode Approach with C++, BrooksCole ','/picture/58.jpg','/picture/58.jpg','/picture/58.jpg',299,'本課程介紹相關的程式設計技術，透過這些學習使學生具有解決較大型問題和複雜問題的能力。',10,4),(59,' G. Glass and K. Ables, UNIX for Programmers and Users, 3rd Edition','/picture/59.jpg','/picture/59.jpg','/picture/59.jpg',28,'培養學生透過UNIX的程式設計來瞭解重要的作業系統觀念，並掌握UNIX的應用與管理技術，以拓展未來發展的基礎。',10,4),(60,'作業研究','/picture/60.jpg','/picture/60.jpg','/picture/60.jpg',38,'本課程將介紹多種管理決策模型和試算表建模方法。目的在學習如何：(1) 建模：建立決策問題的試算表模型，及其對應的代數模型；(2) 求解：使用最佳化工具軟體─規劃求解找出問題的解答；(3)解釋和分析：解釋結果報表和敏感度報表並執行若則分析；(4)建議和實施：建議可行方案並協助實施決策。我們將使用微軟的Excel來示範本課程中的管理決策模型。案例研討的重要主題包括固定成本、供應鏈管理、和投資組合最佳化等',10,4),(61,'行銷學','/picture/61.jpg','/picture/61.jpg','/picture/61.jpg',36,'本門課程旨在(1)協助學生了解行銷於組織及商業環境中所扮演的角色；(2)讓學生熟習行銷管理之基本概念(例：行銷研究、STP、行銷組合等）；(3)強調學生對於行銷策略與行銷活動之應用；(4)培養學生團隊合作、分析與解決行銷問題的能力。課程內容會融入國、內外之實務案例來闡述行銷觀念的應用，藉以提升同學對行銷議題的興趣。',10,4),(62,'新觀念UML系統分析與設計實務 第二版(附CD)','/picture/62.jpg','/picture/62.jpg','/picture/62.jpg',36,'系統分析設計規劃方法論。藉現今企業實務上採用的方法論來建構系統分析、設計與規劃。2. 方法論以物件導向方法與UML(統一塑模語言)為主3. 教學過程以深入淺出的案例引導應用之模式建立。4.以個案專題培養實作能力。',10,4),(63,' Robbins, S.P. & Judge, T.A. (2020). Organizational Behavior, 18th e. Pearson Publishing Co ','/picture/63.jpg','/picture/63.jpg','/picture/63.jpg',39,'增進組織行為概念的知識與理解。 2. 應用組織行為概念於真實世界中管理的問題。 3. 鼓勵學生應用所學以強化成為管理者與領導者的能力。',10,4),(64,' JAVA SE12 基礎必修課','/picture/64.jpg','/picture/64.jpg','/picture/64.jpg',38,'配合大量實作題目練習物件導向各種觀念，如: 遞迴程式、多維陣例設計、繼承、多型與多載等等 2. 建立JAVA 實務程式撰寫規劃能力，協助練習考取JAVA 相關證照之題型 3. 學習進階JAVA相關應用功能，如：Swing 視窗應用、java i/o file處理、資料庫JDBC 連結、Lambda簡介、多執行緒等等',10,4),(65,' E. Maiwald, Fundamentals of Network Security, McGraw Hill, 2004','/picture/65.jpg','/picture/65.jpg','/picture/65.jpg',36,'課程目標：培養學生掌握電腦網路安全相關的基本知識、技術及應用能力，並為進一步從事資訊安全的相關研究奠定基礎。',10,4),(66,' Kenneth, C., LAUDON, L., & JANE, P., Sixteenth (16th), Management Information Systems: Managing the Digital Firm. PEARSON.','/picture/66.jpg','/picture/66.jpg','/picture/66.jpg',36,' Welcome to the world of information management, and welcome everyone to open your mind and embrace new domain knowledge. Because it is a general view, the perspective is very broad, we work together to integrate these new knowledge. I believe that after the introduction of this semester, you will be more aware of the general content of our information management, and then please follow your heart to choose your preferred direction in the future and work hard. ',10,4),(67,' Coronel, C. and Morris, S. (2019) Database Systems: Design, Implementation, & Management, 13th Edition','/picture/67.jpg','/picture/67.jpg','/picture/67.jpg',39,'本課程的主要目的為訓練同學具有開發資料庫管理系統的能力。本課程包含理論與專案實作。理論部份將著重在資料庫管理的基本概念，包括資料庫模型、實體關聯圖設計、資料表正規化、SQL 結構化查詢語言以及進階的資料庫技術探討等。專案實作將以實現資料庫理論為主，並以模擬實務的案子進行實作。',10,4),(68,' Kenneth H. Rosen, Discrete Mathematics and Its Applications (7th ed.), McGraw-Hill, 2007','/picture/68.jpg','/picture/68.jpg','/picture/68.jpg',299,' This course is designed to lay the foundations of studying in computer science. There are three objectives for this course striving to accomplish: (1) To introduce the students at the sophomore level to the topics and techniques of discrete methods and combinatorial reasoning; (2) to develop the mathematical maturity of the student through the study of an area that is so different from the traditional coverage in calculus and differential equations; and (3) to present an adequate survey of topics for the computer science students who will be taking more advanced courses. ',10,4),(69,'《管理會計學：理論與應用》(全一冊)(七版)','/picture/69.jpg','/picture/69.jpg','/picture/69.jpg',299,'知識：透過課程內容教學使同學對管理會計有全方位的認識 技能：瞭解管理會計在企業的運作與功能 態度：熟悉各項管理會計的理論與方法 其他：透過個案模擬協助學生了解管理會計在組織的應用',10,4),(70,'Ross, Westerfield, and Jordan (2020), Essentials of Corporate Finance','/picture/70.jpg','/picture/70.jpg','/picture/70.jpg',28,' The objective of this course is to provide class participants a basic understanding of corporate financial management such as time value of money, investment decisions, financing decisions, dividend policy, corporate governance, and merger and acquisition.',10,4),(71,' Anany Levitin,  Introduction to Design and Analysis of Algorithms  , Addison Wesley ','/picture/71.jpg','/picture/71.jpg','/picture/71.jpg',38,'介紹以計算機解問題的技巧，使學生學習演算法的分析方法，以增進其設計兼具效率和實用性的計算機演算法。',10,4),(72,' Operations Management Stevenson & Sum ','/picture/72.jpg','/picture/72.jpg','/picture/72.jpg',36,'課程目標包含以下：作業管理簡介：服務與製造系統簡介、生產力與成本、作業策略、預測與需求管理；製造系統簡介(影音教材)：即時製造系統(JIT) 、豐田式製造系統、汽車及各產業之製造與再製造系統；服務與製造系統設計：產品設計（服務性商品設計）、產能規劃、流程設計、設施規劃與區位選擇、工作設計與人力資源規劃；供應鏈與物料管理：供應鍊管理、存貨控制與管理、中長期整合規劃（服務業產出與營收管理）、材料資源規劃（MRP）、企業資源規劃（ERP）、短期排程規劃等。',10,2),(73,'新觀念PHP7+MySQL+AJAX網頁設計範例教本(第五版)','/picture/73.jpg','/picture/73.jpg','/picture/73.jpg',36,'本課程的目的是讓修課同學具備架設網站和設計網頁應用程式的能力，並了解網頁程式架構中前後端的差異，以及網路安全的基本概念。除了基礎知識之外，課程中也包含了實作練習項目，讓同學在練習過程中了解如何架設網站和建立網頁，並實作出自己的個人站台。',10,4),(74,'電子商務 E-Commerce (2版)','/picture/74.jpg','/picture/74.jpg','/picture/74.jpg',39,'電子商務在進入新世紀之際，成了全球資訊科技在商業應用之中，最熱門的話題，在各類媒體的報導中，都有極高的曝光率。雖然2000年春天美國網路股崩盤，使得「電子商務」的光輝似乎減少很多，但200年之後，才真正是電子商務穩健發展的開始。',10,4),(75,' Foundations of Computer Science,  4th Edition, Behrouz Forouzan and Firouz Mosharraf, Thomson – for One Year','/picture/75.jpg','/picture/75.jpg','/picture/75.jpg',299,' This Semester: This course introduces fundamental concepts of Computer Science/Engineering. In addition, the class will discuss basic programming skills. Python and C++ languages will be taught. The following outline is from the main textbook. This course outline could be changed if time is not allowed to complete all lectures. Additional lectures for term projects and assignments could be added to the outline. Winter Break: You need to study a part of Java Programming Next Semester (Introduction to Computer Science II): Finishing C++ programming, Java Programming ',10,5),(76,' Fundamental of Data Structures in C, 2nd Edition  , by Horowitz, Shani, M. Tenenbaum.','/picture/76.jpg','/picture/76.jpg','/picture/76.jpg',299,'1. 簡介 C 語言2. Stack (堆疊) 3. Queue (佇列)4. Linked list (鏈結串列)5. Tree (樹)6. Graph (圖)7. Sorting (排序)8. Multiway search trees (多路搜尋樹)9. Hashing (雜湊)',10,5),(77,'Discrete Mathematics and Its Applications Kenneth H, Rosen','/picture/77.jpg','/picture/77.jpg','/picture/77.jpg',28,' 1. To demonstrate to students how mathematics can be applied to solve nontrivial real-life problems 2. To gain more experience with mathematical thinking, arguments and proof techniques, which are essential in reasoning about computation 3. To learn about a number of different discrete structures (e.g., sets, relations, graphs, trees, etc.) that provide the mathematical formalizations for many computational problems 4. To hope that students will not only learn some powerful mathematical tools but also develop their ability to perceive, to formulate, and to solve mathematical problems 5. To provide a gateway to more advanced courses in any computer science courses, including data structures, algorithm, database automata theory, computer security, etc. ',10,5),(78,' Steven J. Leon, Lisette de Pillis, Linear Algebra with Applications, 10th Edition (Global Edition), Pearson Education, 2021.','/picture/78.jpg','/picture/78.jpg','/picture/78.jpg',38,'課程內容包括矩陣運算、線性方程式、向量空間、正交、矩陣行列式、線性轉換、特徵值分析與對角化等。',10,5),(79,'機率與統計','/picture/79.jpg','/picture/79.jpg','/picture/79.jpg',36,'學習機率與統計的基本內容. ',10,5),(80,'1. Assembly Language for x86 Processors 7/E (GE) By Kip R. Irvine','/picture/80.jpg','/picture/80.jpg','/picture/80.jpg',36,'增進學生對組合語言及相關電腦架構的基本認識，同時培養學生對於使用相關技術以提昇程式撰寫及應用的能力。',10,5),(81,'J. F. Kurose and K. W. Ross,  Computer Networking,  3rd Edition, Addison Wesley.','/picture/81.jpg','/picture/81.jpg','/picture/81.jpg',39,'期望透過此門課程所教授之內容幫助同學對計算機網路有更深層的認識，並了解計算機網路的應用 ',10,5),(82,' Handbook of Applied Cryptography by Alfred J. Menezes, Paul C. van Oorschot and Scott A. Vanstone','/picture/82.jpg','/picture/82.jpg','/picture/82.jpg',299,'這門課程旨在用科技與社會的角度去理解資安與隱私的重要性，如何用賽局的角度去理解敵人，如何設計安全穩定的系統。此課程重點為用寬廣的角度去理解世界上各式各樣的資安問題，並不著重深入討論資安相關技術，例如:駭客、CODING、資安管理等。',10,5),(83,' R. C. Gonzalez, R. E. Woods, Digital Image Processing, Prentice-Hall Shapiro and Stockman, Computer Vision, Prentice-Hall','/picture/83.jpg','/picture/83.jpg','/picture/83.jpg',299,'電腦視覺結合了影像與視訊處理以及圖形識別等相關技術。因此本課程之主要內容在於教導學生電腦視覺之相關技術及應用，其應用部分將特別強調智慧型監控的部份。透過本課程可使學生進一步瞭解各種影像處理及圖形識別的技術與應用',10,5),(84,'蘇木春、張孝德, 機器學習：類神經網路、模糊系統以及基因演算法, 1999','/picture/84.jpg','/picture/84.jpg','/picture/84.jpg',28,'1.了解各類常見之類神經網路。2. 能使用程式語言實現類神經網路演算法。3. 有能力做簡報。',10,5),(85,' Frank Vahid and Tony Givargis, Embedded System Design: A Unified Hardware/Software Introduction, John Wiley & Sons, 2002.','/picture/85.jpg','/picture/85.jpg','/picture/85.jpg',38,'在這個課程中，我們將探討嵌入式系統的硬體和韌體設計的方法和技術。包括嵌入式處理器的選擇，硬體/韌體切割，周邊驅，系統架構，開發工具，嵌入式軟體設計等課題。本課程以ARM Cortex-M7微處理器架構為基礎，STM32H743 MCU作為實驗平台，透過實驗，進行進行各種周邊的驅動和嵌入式中介軟體開發實作，讓學生深入了解嵌入式系統設計方法論和系統實作流程。',10,5),(86,' An Introduction to Probabilistic Graphical Models   by Michael I. Jordan  Probabilistic Graphical Models: Principles and Techniques','/picture/86.jpg','/picture/86.jpg','/picture/86.jpg',36,' Provide theoretical knowledge to develop effective machine learning algorithms.',10,5),(87,'輕鬆學量子程式設計(江振瑞 著)','/picture/87.jpg','/picture/87.jpg','/picture/87.jpg',36,'帶領學生了解量子計算基本原理及最新量子計算技術之發展與應用',10,5),(88,' Stuart Russell, Peter Norvig. Artificial Intelligence: A Modern Approach, Third Edition, Prentice Hall. 2010','/picture/88.jpg','/picture/88.jpg','/picture/88.jpg',39,'近年來人工智慧(AI)在提昇系統智慧程度的成效，已逐漸為大眾所接受，不論是在視覺、聽覺或是語言、認知上均獲得不少進展。這股人工智慧的潮流，顯示了未來產品系統智慧化的趨勢。在這門課中，我們將介紹人工智慧領域主要技術，包括搜尋、規劃、推論、機器學習等，以及相關技術在視覺、聽覺、語言、行動、決策上的應用。',10,5),(89,' U. Manber, Introduction to Algorithms, Addison-Wesley ','/picture/89pg','/picture/89.jpg','/picture/89.jpg',299,'能獨立完成演算法的設計、分析、以及 實作.',10,5),(90,' Daniel P. Bovet and Marco Cesati, `` Understanding the Linux Kernel 3rd Edition, OREILLY','/picture/90.jpg','/picture/90.jpg','/picture/90.jpg',299,'1.學習 Linux Kernel 的原理 2. 培養撰寫,修改 Kernel Code 的能力 ',10,5),(91,' Erwin Kreyszig, Advanced Engineering Mathematics Abridged Version, 10th Edition Update (Taiwan Custom Version), John Wiley & Sons, Inc., 2018.','/picture/91.jpg','/picture/91.jpg','/picture/91.jpg',28,'學習微分方程，訓練數理邏輯能力以及訊號處理基礎 ',10,5),(92,' C語言教學手冊(5版) ','/picture/92.jpg','/picture/92.jpg','/picture/92.jpg',38,'本門課程將介紹基本的程式設計技巧及資料結構入門。在課程中，我們將會介紹 C 程式語言 ',10,5),(93,' Electronics Fundamentals: Circuits, Devices, and Applications, 8th edition. By Thomas L. Floyd','/picture/93.jpg','/picture/93.jpg','/picture/93.jpg',36,' 1. 作業練習培養數理邏輯能力 2. 分組實驗實作驗證能力及溝通協調與團隊合作能力 3. 分析與處理問題的能力',10,5),(94,' Computer Organization and Design: The Hardware/Software Interface ','/picture/94.jpg','/picture/94.jpg','/picture/94.jpg',36,'本課程主要介紹計算機架構的基本知識，包括效能評估、指令集設計、數位邏輯、資料流架構與相關硬體設計等議題。課程內容可培養學生邏輯與設計能力的養成，讓學生對計算機組織與架構具備基本的認知與了解，將來可進一步修習計算機結構等進階課程。',10,5),(95,' Meteorology Today: Introduction to weather climate and the environment, 9th edition C. Donald Ahrens','/picture/95.jpg','/picture/95.jpg','/picture/95.jpg',39,' Chapter 1：The earth and its atmosphere Chapter 2：Energy ─ Warming the earth and the atmosphere Chapter 3：Seasonal and Daily Temperatures Chapter 4：Atmospheric Humidity Chapter 5：Condensation ─ Dew， fog， and clouds Chapter 6：Stability and cloud development Chapter 7：Precipitation Chapter 8：Air pressure and winds',10,6),(96,' Advanced Engineering Mathematics, 10th edition,by Erwin Kreyszig,John Wiley & Sons','/picture/96.jpg','/picture/96.jpg','/picture/96.jpg',299,'第一章 :一階常微分方程式，第二章 :二階線性常微分方程式，第三章 :高階線性常微分方程式，第五章 :線性常微分方程式的級數解與特別函數，第六章 :拉普拉絲轉換，第七章 :向量，矩陣，行列式，和線性系統。',10,6),(97,' Chivers, I.D., and J. Sleightolme (1990), Interactive Fortran 77, Second Edition, 233pp','/picture/97.jpg','/picture/97.jpg','/picture/97.jpg',28,'  1. What is Fortran?2. Basic Fortran concepts3. Fortran in practice4. Program structure and layout5. Constants, variables, and arrays6. Arithmetic7. Character handling and logic8. Control statements9. Procedures10. Input/output facilities11.Matlab ',10,6),(98,' Murck, Barbara W., Skinner, Brian J., and Porter, Stephen C., 1997: Dangerous Earth -- An Introduction to Geologic Hazards. John Wiley & Sons, Inc.','/picture/98.jpg','/picture/98.jpg','/picture/98.jpg',38,'主要以地球環境劇變導致的天然災害，如氣象、海洋、地震、土崩等災害為討論範圍，對於會引起大規模人命傷亡的災害有特別的關注。討論的方式則從天然災害的特性、造成的損失與影響、危險度的評估與管理，到災害的防治等。',10,6),(99,'  Mind on Statics, 3rd Edition Jessica M. Utts and Robert F. Heckard Duxvury Press','/picture/99.jpg','/picture/99.jpg','/picture/99.jpg',36,' To understand how to be a better decision maker through statistical methods in your daily life and in your future professional career',10,6),(100,' Introduction to Plasma Physics, R. J. Goldston and P. H. Rutherford, Taylor & Francis, 1995.','/picture/100.jpg','/picture/100.jpg','/picture/100.jpg',36,' 1. 電漿之基本特性、尺度2. 帶電粒子在不同電磁場情況下之運動情形3. 太空環境之各種電漿波動4. 於太空環境量測之應用',10,6),(101,' Raven, Hassenzahl, Hager, Gift and Berg; Environment, 9th Edition; Wiley, 2015','/picture/101.jpg','/picture/101.jpg','/picture/101.jpg',39,'本課程為環境研究專業科目的入門課程，著重於廣泛與普遍的說明多項環境問題、成因與解決之道，如能源與資源的耗竭、空氣污染、水污染、廢棄物處理、臭氧層破洞、全球氣候變遷等，培養學生全面性的概念，引導學生了解環境與人類生活之關聯以及環境保護之重要性。',10,6),(102,' Advanced Engineering Mathematics, by Kreyzic ','/picture/102.jpg','/picture/102.jpg','/picture/102.jpg',38,' 1. Statistical analysis 2. Error analysis 3. Correlation and Convolution 4. Fourier analysis 5. Interpolation 6. Data modeling: Fitting data with a function 7. Numerical integration of ordinary differential equations 8. Solving linear algebraic equations: matrix inversion',10,6),(103,'天氣學','/picture/103.jpg','/picture/103.jpg','/picture/103.jpg',36,'天氣圖分析與天氣預報 ',10,6),(104,' Introduction to Tropical Meteorology, 2nd Edition, Produced by The COMET? Program.','/picture/104.jpg','/picture/104.jpg','/picture/104.jpg',36,' 熱帶氣象是過去二十年大氣科學領域中進展最快的一門次領域科學，本課程將以全新的角度介紹熱帶中重要天氣和氣候現象以及最新的研究進展，課程內容包含:(1)熱帶氣象綜述，(2)遙測, (3)全球環流, (4)熱帶變異, (5) 水汽與降雨分布, (6) 垂直輸送, (7)綜觀與中尺度系統, (8)熱帶氣旋, 以及(9)觀測分析與預報。',10,6),(105,' Doppler Radar and Weather Observations R. Doviak and D. Zrnic','/picture/105.jpg','/picture/105.jpg','/picture/105.jpg',39,'介紹氣象雷達的基本原理以及在氣象上的應用  ',10,6),(106,' Biggs, G.R. (2003)  The Oceans and Climate  Cambridge University Press.','/picture/106.jpg','/picture/106.jpg','/picture/106.jpg',299,'海洋的循環流動對於全球氣候與氣候變遷有著深遠的影響。本課程旨在引領學生了解海洋裡的大尺度環流在氣候系統裡所扮演的角色，並深入探討氣候變遷下海洋環流與大氣之間相互回饋的動力機制。',10,6),(107,' Enhance understanding of the boundary layer physical processes.','/picture/107.jpg','/picture/107.jpg','/picture/107.jpg',28,' An introduction to boundary layer meteorology By Roland B. Stull',10,6),(108,' Meteorology Today','/picture/108.jpg','/picture/108.jpg','/picture/108.jpg',38,' The main purpose of the text is to convey meteorological concepts in a visual and practical manner, while simultaneously providing students with a comprehensive background in basic meteorology and up-to-date information on important topics, such as cloud and fog, rain, mid-latitude and tropical cyclones, air mass and front, weather forecast, air pollution, general circulation, global warming, ozone depletion and El Niño. ',10,6),(109,' Kundu, P. K. and I. M. Cohen 2004: Fluid Mechanics PP.759 Elsevier Academic Press.','/picture/109.jpg','/picture/109.jpg','/picture/109.jpg',36,'引導學生了解流體的基本性質，學習流體的物理性質、流體的運動學、流體運動的基本定律、無旋性流體之運動 、渦度動力學、動力相似性、及邊界層的流體運動',10,6),(110,' Atmospheric Thermodynamics Elementary Physics and Chemistry','/picture/110.jpg','/picture/110.jpg','/picture/110.jpg',36,' (1)具備大氣熱力過程的基本知識。 (2)瞭解熱力學三大定律。 (3)瞭解乾空氣與溼空氣的大氣特性。 (4)能夠解讀斜溫圖。 (5)判別大氣穩定度 ',10,6),(111,' An Introduction to Dynamic Meteorology: James R. Holton and Gregory J. Hakim, 2012','/picture/111.jpg','/picture/111.jpg','/picture/111.jpg',39,' Ch7: 斜壓發展Ch8: 行星邊界層Ch9: 中尺度環流Ch10: 大氣環流Ch11: 熱帶動力Ch13: 數值模擬與預報',10,6),(112,' Understanding Weather and Climate,International Edition,5th Edition. Edward Aguado, James E. Burt','/picture/112.jpg','/picture/112.jpg','/picture/112.jpg',299,' I. Energy and Mass II. Water in the Atmosphere III. Distribution and Movement of Air IV. Disturbances V. Human Activities and Special Topics VI. Current, Past and Future Climates',10,6),(113,' Air Pollution and Global Warming, M. Z. Jacobson, 2012.','/picture/113.jpg','/picture/113.jpg','/picture/113.jpg',299,' This is an introductory course to provide sophomore and above a basic knowledge on the history, theory, observation, measurement, regulation of air pollution, and its link with global change. In-class lectures, intensive discussions and field trip will be given.',10,6),(114,' Mesoscale Meteorology in Midlatitudes , Markowski P. and Y. Richardson., 2010:, Wiley-Blackwell, 430 pp.','/picture/114.jpg','/picture/114.jpg','/picture/114.jpg',28,'本課程目的為介紹中尺度天氣現象, 並就各種不同的中尺度天氣系統, 說明它們的生成機制、內部的結構、物理與動力過程、維持機制等。透過專題報告的方式，幫助學生了解實際中尺度天氣個案。',10,6);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (75,28,1,4,2,'管理員','1333333333','美國','2022-10-07 12:31:07',1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (78,28,1,10,75);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (9,2,9),(10,3,10),(11,3,12),(12,3,13),(13,3,14),(14,3,15),(15,3,16),(17,3,18),(18,3,19),(29,1,9),(33,2,10),(34,2,11),(35,2,12),(36,2,13),(37,2,14),(38,2,15),(39,2,16),(40,2,18),(41,2,26);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'英美語文學系'),(2,'物理學系'),(3,'機械工程學系'),(4,'資訊管理學系'),(5,'資訊工程學系'),(6,'大氣科學學系');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@gmail.com','admin','管理員','1333333333','美國','','\0'),(2,'vili','vili@gmail.com','vili','vili','1344444444','美國','\0','\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 15:46:38
