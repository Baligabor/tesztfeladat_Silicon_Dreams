-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 27. 18:47
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tesztfeladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `blogs`
--

INSERT INTO `blogs` (`id`, `author`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Marcel Wyman', 'Eaque omnis accusantium quidem esse qui. Voluptatum et eveniet quam tempore.', 'Rerum sunt eos labore ullam. Ipsum praesentium impedit similique veritatis id et incidunt. Consequatur aperiam ipsum molestias molestias vitae natus rerum cum. Harum aperiam tempora quia aut et qui. Voluptatum consectetur asperiores et. Nulla accusamus dicta et optio natus aut nostrum qui. Quia dicta expedita perferendis dolore.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(2, 'Julien Bayer', 'Consequatur facere adipisci qui iste at incidunt non molestiae.', 'Dolor fuga qui aut beatae excepturi. Voluptatibus sit fuga dicta velit iusto et qui. Adipisci temporibus architecto voluptate quia laboriosam quaerat possimus. Rerum molestias fuga cupiditate sit beatae. Dolorum quaerat aperiam consequatur similique perspiciatis nesciunt ut a. Voluptatem animi tempora quia et. Rerum ipsa sapiente dolore autem animi nemo.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(3, 'Coty Roob V', 'Illo ut odio modi quas. Rerum odit fugiat quod quo doloribus voluptatem.', 'Eveniet sint voluptate veniam. Officia error inventore maxime maxime at. Dolorem nihil laboriosam ratione ut vitae eos. Enim qui illum ab. Ea non aliquid a nobis dicta numquam qui. Ullam aut maiores quo eum et asperiores. Sapiente sed voluptatem ut facilis ullam.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(4, 'Maximillia Krajcik', 'Suscipit aut dolore eveniet et consectetur laboriosam.', 'Et ut illum totam qui et ab dolores. Expedita libero provident facilis blanditiis aut. Repellat voluptas rerum veniam animi. Culpa facilis ullam adipisci porro nemo ut sed. Voluptatem ut accusamus reiciendis porro qui. Sed aperiam ut autem consequuntur aut eum. Officiis ut quibusdam fugit aut dolores est. Doloremque aut distinctio eum quis.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(5, 'Dr. Telly Parisian', 'Enim sed sit maiores odio. Sed temporibus atque aut eaque voluptatem et.', 'Iste molestiae amet quo temporibus. Qui voluptatum similique nobis sed pariatur ex error. Harum voluptas et in nesciunt. Hic sit quas consequatur pariatur ullam fuga magnam. Exercitationem ut officia labore. Unde et deserunt temporibus qui fugiat amet aut. Ullam cumque et quidem.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(6, 'Cydney Bailey', 'Eos excepturi quae sapiente non eveniet eum. Qui vel qui ut.', 'Sit dolorem corrupti numquam ducimus sint. Quam omnis ut asperiores molestiae veritatis voluptates ipsam. Sit minus voluptatum facilis repellendus ut optio eos. Sit possimus voluptatem et. Debitis necessitatibus est exercitationem dicta eaque nesciunt.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(7, 'Anabelle Friesen', 'Inventore placeat eaque et nesciunt molestias expedita tempore.', 'Unde voluptas molestiae ullam beatae. Voluptas exercitationem quia libero rerum. Saepe libero fuga vitae sunt debitis unde. Adipisci iste non qui adipisci dolorem quae fuga. Quia expedita nihil laudantium ex enim. Quam sed eos dolore molestiae. Autem iure aliquam autem esse.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(8, 'Prof. Isac DuBuque III', 'Laboriosam voluptas voluptas ad repellat. Nulla aut a consequatur voluptatibus.', 'Sit et ratione sit odit. Est nisi tenetur earum facilis consectetur. Mollitia porro harum dolore est debitis distinctio. Et possimus sed est harum natus et corrupti. Mollitia dolorum et impedit voluptatem quaerat. Enim cumque eligendi aperiam voluptate et facere. Consectetur impedit veniam rerum totam voluptatem aut. Qui saepe eum voluptates commodi.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(9, 'Prof. Emmitt Dietrich', 'Quo ex sed quo. Possimus ullam quos qui sunt molestiae labore assumenda.', 'Unde voluptas sit doloribus est vitae eum ipsa ut. Est totam animi non non. Consectetur et similique omnis enim excepturi et distinctio. Amet et similique iste eos sit voluptatem qui. Id laboriosam atque qui cumque. Ad et dolore adipisci nam et. Ipsum facere nostrum quia accusantium. Aliquam at ut est veniam commodi.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(10, 'Norberto Labadie', 'Nulla molestiae et velit debitis distinctio.', 'Dolorum et suscipit non harum commodi ea. Eligendi voluptatem omnis nostrum provident harum sapiente. Autem vero non aliquid consequatur qui temporibus qui ut. Omnis deleniti possimus dolorem non. Aut aliquam ipsam sequi rerum soluta consequuntur consequatur. Quaerat vel aspernatur quasi blanditiis et earum. Eum corrupti dolorem non at cupiditate earum eveniet omnis.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(11, 'Dayna Cassin', 'Asperiores voluptatem tempore at animi cum. Provident impedit rem omnis iure.', 'Dolorem repellat aut reprehenderit quae. Ut incidunt voluptatem beatae reiciendis vero et cumque ut. Reiciendis in est aut. Quo dicta officia dignissimos temporibus id nihil. Voluptas mollitia et ut eligendi. Earum quasi id delectus eos. Exercitationem rem minima aut tenetur. Quo eligendi dolores quas culpa corporis minima eum occaecati.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(12, 'Mr. Dangelo West', 'Aliquid iusto quaerat voluptatem.', 'A a rerum deserunt repellendus quia et qui. Ut molestiae autem quis. Voluptatibus nulla eum necessitatibus qui. Tempora tempora illo voluptas recusandae a dolor aliquid. Non tempore commodi fuga rem quas inventore est. Quo quis libero consequatur dolorem voluptatem. Iure iure iusto et voluptatibus sequi est.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(13, 'Miss Sharon O\'Conner', 'Sed maxime quibusdam quod asperiores at qui voluptatum.', 'Doloribus qui fuga aut ut in magnam. Libero quidem impedit asperiores aliquam eius reiciendis impedit. Dicta aspernatur quis vel error fugiat ut. Eos asperiores corrupti at.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(14, 'Ryann Marquardt', 'Ut minima ut sit magni ex. Corrupti itaque saepe quis deleniti ipsam.', 'Explicabo ab mollitia quia pariatur nemo. Sed quia eaque sed nesciunt provident placeat nobis. Non laborum quia rerum et. Omnis in ab ad rem. Eum voluptatum voluptatibus et earum quam. Aut praesentium praesentium mollitia sunt iste voluptatem earum. Et quisquam ut consequatur amet est sunt ut officia. Omnis sed enim atque sed architecto quos.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(15, 'Dr. Anna Howell PhD', 'Tempora tempore reiciendis expedita omnis.', 'Dignissimos facilis saepe in iste quia nihil. Quo vero facere quaerat quae officia ut aut eum. Iure minima fuga non minus quis et. Veritatis et sed adipisci iste blanditiis repudiandae laborum id. Ab aut ea expedita doloremque. Dignissimos quidem dicta eos soluta. Unde optio sit enim. Rerum perferendis atque optio aut magnam quo sed.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(16, 'Prof. Bobbie Davis', 'Cupiditate omnis sit odit ut. Natus quos quam cupiditate laborum.', 'Cum modi nostrum adipisci enim. Ipsam sed quia animi asperiores. Ullam reiciendis itaque aspernatur perspiciatis quasi qui amet. Velit officia voluptas earum sequi quod. Enim earum molestiae doloremque et saepe. Nihil iure ipsum quisquam quia sapiente vitae adipisci. Sit assumenda sed laborum.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(17, 'Dr. Elizabeth Haley', 'Nobis omnis saepe eum delectus. Adipisci aperiam non ex adipisci omnis.', 'Illo iure nobis aut blanditiis officiis. Sit deleniti et doloribus consectetur dignissimos dolorem omnis. Sit vitae dolorem voluptate itaque dicta et. Magnam ab sunt consequatur dolor commodi. Odio modi non distinctio fuga dolores. Laborum eius assumenda alias perferendis id facilis. Ut facilis maiores eos et laborum quia vel nam. Consequuntur incidunt neque aut distinctio.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(18, 'Prof. Afton Rippin', 'Consequuntur sit velit et. Quos aut itaque eos reprehenderit.', 'Molestias beatae veritatis est quos commodi. Sed delectus enim quaerat rerum ut. Repellendus laborum quaerat quod et non. Expedita ipsum saepe quia blanditiis tempora consequuntur. Officia atque est doloribus repellendus beatae aliquam et. Doloremque consequuntur voluptatibus vero laborum. Distinctio amet molestias doloremque. Dicta exercitationem enim aut iure qui voluptatem.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(19, 'Damian O\'Hara DDS', 'In quibusdam neque sit ut nesciunt. Ea autem et fugiat.', 'Qui aut impedit ex accusamus quia nobis ut. Tenetur architecto et hic fugit quia voluptatem. Adipisci id omnis repellat temporibus harum quia a. Illum quia architecto praesentium ab in omnis. Corrupti illum sed deserunt et repellat. Aut ad nisi voluptate nihil ut at aperiam. Vel facilis quia velit ut. Temporibus quam et non architecto facere provident itaque.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(20, 'Derrick Kris', 'Facilis ab maxime at est molestiae officiis eum. Aut sit atque dolorem itaque.', 'Nobis voluptates iste veritatis nesciunt. Odio beatae ducimus fugiat nam voluptate voluptatem sunt eveniet. Et repellendus nemo quo ab ut deserunt. Quae tempora voluptatum exercitationem consectetur impedit. Enim sint eaque voluptas. Sint provident accusamus quod. Dolor consequatur laboriosam quasi consequuntur aliquid recusandae.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(21, 'Amie Tremblay MD', 'Aut aut porro blanditiis aut voluptatem.', 'Quam sit aperiam consectetur perspiciatis. Ut et sapiente id cum rerum. Sit non iste debitis est eum. Accusantium alias repellat corrupti velit praesentium blanditiis vitae. Placeat molestiae molestiae dicta atque unde laborum voluptatum eligendi. Eos aut sed perspiciatis et autem temporibus dignissimos atque. Omnis earum provident temporibus magnam est. In aut hic ut et nihil.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(22, 'Jayden Spencer', 'Cum rerum recusandae ut in architecto dicta modi.', 'Officia soluta voluptatum nihil. Aut fuga debitis sed et est. Esse dolores laudantium possimus ut. Consequatur accusantium beatae quaerat at id. Vero molestiae voluptas magnam qui et facere quaerat. Officia officia voluptatem quia praesentium. Hic repellendus excepturi ut dicta. Saepe deserunt nam sint. Maxime nobis ea quia id sed.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(23, 'Wilford Jacobson MD', 'Et dolore consectetur impedit repudiandae fuga.', 'Commodi qui fugiat a voluptas laborum. Optio qui laudantium autem cum. Officiis odio labore voluptatem impedit nihil nisi beatae esse. Accusantium nulla labore atque. Sequi labore et consequatur commodi doloribus. Quisquam optio nesciunt harum explicabo quaerat et commodi. Aut maxime dolor cum non. Vel nobis eos dolores ut.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(24, 'Alfreda Swaniawski MD', 'Inventore velit officiis est qui eligendi.', 'Dolores quasi quia aspernatur voluptatem et fugit aut. Eveniet aut voluptas debitis nesciunt rerum. Laboriosam aut aperiam quam molestiae. Repudiandae laboriosam quae quaerat. Quis dolor autem atque. Similique nemo dignissimos molestiae nihil vero in omnis. Rem asperiores omnis vel soluta consequatur odit recusandae.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(25, 'Ed Zieme', 'Sit exercitationem tenetur et inventore veritatis.', 'Consectetur quisquam aut tenetur laborum minus ut reiciendis sit. Sunt maiores voluptate accusamus non dolores voluptas voluptatum. Earum error iste adipisci quia maiores. Voluptatum sed ullam magnam non atque pariatur officia. Dolorem molestiae fuga unde minus quasi omnis. Hic omnis beatae aperiam cumque neque itaque. Suscipit dolor dolorem vel enim ullam odio praesentium temporibus.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(26, 'Judge Oberbrunner DDS', 'Cum est maxime quis doloremque quia.', 'Voluptas consectetur incidunt vero alias ipsam laboriosam. Beatae nemo expedita eius quia voluptas ut. Error nobis minus nemo odio. Nemo esse voluptates modi reprehenderit. Occaecati sit itaque amet quia doloremque. Maiores quia in nihil debitis. Nostrum ullam voluptas eos. Ullam ducimus quia molestiae ut. Sint facilis eum sed quibusdam minus perferendis quaerat sequi.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(27, 'Mr. Christop Dicki Sr.', 'Facere voluptatem corrupti aut neque. Nisi dicta est doloremque facere optio.', 'Laudantium delectus aut qui. Qui eaque quia aut. Itaque maxime enim quis et ipsum maxime eveniet. Eos facilis sequi consequuntur ut. Error ipsam voluptas ab quas soluta sunt et. Excepturi debitis dolores ipsam iure. Illum molestiae veritatis fugiat ea consequatur vel ducimus.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(28, 'Jazmyn Mohr MD', 'Et quas nihil qui neque nihil neque qui.', 'Nobis sint culpa nam omnis aut ullam mollitia magnam. Atque cumque natus voluptatem provident omnis quia labore. Ea maiores repellendus vero cupiditate et ea et. Incidunt blanditiis voluptate dolorem nam sapiente. Aliquam non itaque quos voluptas.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(29, 'Prof. Wiley Hintz II', 'Aut sunt animi nihil. Neque ipsam qui vel laborum sint qui veritatis.', 'Eos minus sequi est. Vel libero sed dolor ullam. Numquam necessitatibus molestias id atque est sit quia. Sapiente libero eos nihil sint commodi. Animi aliquam nisi accusantium similique. Rerum saepe vel suscipit nihil molestiae consequatur. Ab corporis sint quis ex.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(30, 'Laurel Bradtke', 'Iusto nisi ut perspiciatis necessitatibus. Ut suscipit iusto animi dignissimos.', 'Tempora sint adipisci vitae et. Omnis dolor praesentium amet autem sit ipsam delectus. Sequi et ipsum esse itaque magni eum. Iure officia voluptatum reiciendis. Quaerat officia aliquid magni aut quae omnis maxime. Enim nobis itaque alias qui natus quisquam aliquid. Odio ipsam qui voluptatum sed.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(31, 'Dina Hartmann', 'Quo similique nulla non quaerat eos voluptatem non dolor.', 'Tenetur ipsum impedit deserunt corrupti possimus. Quibusdam repellendus minima rerum repudiandae unde voluptatem omnis id. Quod qui debitis quia nulla voluptas vero est. Odio earum dolor consequatur veritatis quos aut rerum.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(32, 'Francesca Bayer', 'Nesciunt ducimus at et sit.', 'Quia aut voluptatibus velit sunt in doloremque. Enim reiciendis omnis nemo et. Est qui ducimus soluta quo fugiat. Cupiditate minima totam optio ad nobis. Eaque commodi aut ut voluptate. Quisquam reprehenderit sit et consequatur illo aperiam autem. Natus sed hic et architecto recusandae accusantium et. Ratione vel quas dolor.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(33, 'Alberto Konopelski', 'Et et quam esse ut saepe odio fuga perspiciatis.', 'Optio sit id ut saepe ratione. Et molestias sit non aut sit quos qui. Repellat totam consequuntur ducimus voluptatem qui. Eum et quia eveniet dolorem modi quis modi. Soluta quam reiciendis occaecati atque odit. Ut quam sit distinctio nostrum rem. Voluptatem illum sapiente quis praesentium molestiae deleniti eveniet. Ut sit ut hic recusandae.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(34, 'Mervin Collins', 'Odio porro eum quae consequatur possimus in.', 'Quia modi eum aliquam autem. Maiores excepturi qui ut quasi totam rem. Provident vel quia doloremque dignissimos porro quo ut. Sapiente commodi nulla mollitia. In eaque blanditiis enim dolorum. Molestiae optio fugiat vitae rem nostrum autem aliquid. Sapiente inventore deserunt consequuntur eos ea. Ut sapiente dolorem ea alias rem reiciendis. Quam et ut non consectetur aspernatur in.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(35, 'Adelbert Pfeffer', 'Illum aperiam tenetur aut labore sunt tempora.', 'Tempore rerum illum reprehenderit quidem harum quaerat laudantium. Placeat dolorum voluptatem unde enim. Dolorem id impedit at voluptatibus sed. Aliquid enim voluptas possimus possimus amet. Veritatis et veritatis recusandae sint quis. Aliquid odit earum asperiores dolorem accusamus expedita. Reprehenderit est blanditiis nisi repellendus omnis quis est.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(36, 'Kayley Fritsch', 'Nemo quo voluptatem eveniet est voluptates dolore consectetur.', 'Sit voluptatum omnis quia ratione. Cum facere fugit iste nostrum ullam. Qui sit animi sunt voluptatum. Est voluptates sit voluptatibus eum atque quis. Et laudantium nihil facere quibusdam. At rem laudantium est voluptatum harum ut hic. Quo incidunt totam eveniet ipsa quibusdam dolorem.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(37, 'Dr. Jo Lowe Jr.', 'Ipsum in omnis dolorum quas ut sit laboriosam.', 'Repudiandae eius accusantium molestias. A reiciendis et nobis sit et recusandae libero ad. Est et ipsam sit quia molestiae. Itaque mollitia qui similique asperiores eos iusto molestias tempore. Dignissimos et sit expedita rerum blanditiis delectus. Labore repudiandae dolor odit consequatur non. Minus minima et ullam enim consequatur. Beatae cumque sint non commodi.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(38, 'Maxie Little', 'Harum laborum et magnam perferendis in aliquam.', 'Id sed laborum aliquam vel. Voluptatem est suscipit itaque impedit. Eum beatae maxime consectetur veniam voluptatem nobis. Illo nulla velit dolores sequi. Aliquam suscipit ducimus est. Neque dicta distinctio rem quaerat. Quam qui fuga est. Debitis nihil mollitia cum eum inventore nihil. Exercitationem in vel quam ab molestiae deserunt porro. Omnis rerum non distinctio ratione et est.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(39, 'Orrin Zieme', 'Et doloribus maiores facere voluptas iusto eum.', 'Earum officia voluptatem sunt praesentium. Repellat magnam consequatur enim culpa omnis ad explicabo. Nam in odit dolorum dolor. Rerum esse velit enim officiis iure. Soluta cum et culpa soluta assumenda. Repellendus quae ipsum officia ea et error impedit. Eos exercitationem ullam ratione odit quis nisi eveniet harum. Est et ut minus voluptatem mollitia.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(40, 'Rusty O\'Conner', 'Aliquam aut consequatur vel consequatur vero et.', 'Ut quas autem quo quasi aspernatur aut. Temporibus aliquid labore quo omnis. Debitis veritatis cupiditate eius corrupti. Sit ipsam mollitia ut aliquid molestiae consequatur molestiae. Voluptatum aut nemo distinctio molestiae. Et eaque praesentium ab et quidem eius hic consequatur. Possimus eveniet ut repudiandae rem consequuntur dolorem cum commodi.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(41, 'Autumn Kovacek', 'Quis similique aut nemo. Est nihil corporis nobis a aut.', 'Accusamus nostrum et totam magni. Eveniet non maxime aut et odit consequuntur. Cupiditate est voluptas cum reprehenderit. Est perferendis eius ut doloribus eos laboriosam accusantium. Sint sit rerum quas culpa in voluptatem. Eum voluptatem ipsum est nulla.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(42, 'Dr. Macie Hilpert', 'Eum reiciendis impedit iure aut. Quidem laboriosam optio dignissimos veritatis.', 'Dolor eveniet eos amet. Facilis minima omnis quia nihil cumque atque delectus voluptas. Quia architecto odio consectetur est praesentium rerum consequatur. Eius debitis dolores ea dolor sit cupiditate sed.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(43, 'Arlie Schamberger', 'Officiis itaque et numquam aperiam saepe rerum.', 'Minima repellat explicabo commodi velit ullam consequuntur. Sint fugit animi esse optio ut ratione eius. Vel explicabo consequatur quia assumenda rerum cumque architecto. Maxime necessitatibus quae et magni. Veniam quia vel rem voluptas totam consequatur. Iusto voluptatem accusamus repellat dolorem molestiae et voluptate facilis.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(44, 'Bessie Prosacco', 'Sed occaecati et laudantium cum laborum corrupti reiciendis.', 'Laboriosam aut labore neque culpa exercitationem in impedit. Et magnam aspernatur nulla minus magnam qui distinctio incidunt. Tempora laudantium et aut nihil cumque eligendi. Voluptatem quia iste reprehenderit quibusdam. Voluptatum occaecati voluptatem ex esse perferendis. Qui veniam dolorum eum totam et placeat at id.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(45, 'Mr. Sedrick Willms PhD', 'Qui alias incidunt aut similique tempore.', 'Praesentium laborum nihil ratione porro ipsum esse. Odit nesciunt dolorem consectetur provident laboriosam eveniet temporibus. Exercitationem ut est vero. Sunt ut sed et itaque consectetur repellendus tenetur enim. Voluptate rerum ipsum iure doloremque illum. Velit doloremque occaecati nesciunt consequatur dolorum totam est.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(46, 'Mr. Salvatore Larson DVM', 'Accusamus accusamus rerum similique ab excepturi aperiam corrupti.', 'Minima magni reiciendis officia assumenda dicta laborum ratione. Quia voluptatem minus animi voluptatum temporibus. Blanditiis ipsa est eaque optio. Voluptas maiores officia voluptas asperiores qui laboriosam dolor laudantium. Rem id eligendi eligendi modi dolorum sed. Quae unde quisquam dolor adipisci voluptas sint nesciunt.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(47, 'Kristy Pfeffer Jr.', 'Nostrum nam aut hic veniam nisi. Nulla esse dolorum enim aspernatur tempore ea.', 'Tempore ut at eligendi. Qui et laudantium dolores corporis inventore. Velit sed veniam doloribus aut totam. Doloribus optio excepturi ipsum debitis doloremque saepe at sint. Repellendus laborum doloribus sed fugit. Sed et doloremque aut omnis voluptatibus. Ea consequatur perspiciatis quidem beatae porro tempora.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(48, 'Ms. Lenora Zboncak', 'Est molestiae eum eum omnis. Ut iure ea distinctio pariatur in facilis aliquid.', 'Voluptas voluptas qui iusto odit. Officiis officiis nulla minus. Nesciunt ipsa consequatur et magnam et quia. Sequi consequuntur repellat voluptatem vel ipsum voluptatum et. Voluptatem perspiciatis ex sapiente architecto. Harum temporibus ea delectus natus quia.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(49, 'Dr. Greta Hyatt PhD', 'Eum voluptatibus quia sint soluta.', 'Et ad quo explicabo quos suscipit ut. Ea fugit perspiciatis dignissimos earum. Illum laboriosam occaecati dolorum accusantium vel. Possimus consequatur soluta et eveniet at ipsum. Non dicta voluptatem laudantium facere voluptatibus ea. Sed cumque velit omnis veniam. Libero error soluta accusamus dicta eum. Ea molestiae cum aut voluptatibus. Vitae ut odit minima. Quis rem dolore rerum eaque.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(50, 'Carolyne Rippin', 'Nulla non est incidunt omnis. Sunt suscipit eum velit fuga.', 'Corrupti aut modi doloremque commodi porro. Eum repudiandae sit ipsum et et accusantium quia mollitia. Eum et voluptatem nihil quae perferendis eligendi quo nulla. Nam eius non ut minus.', '2022-02-27 16:33:30', '2022-02-27 16:33:30');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `blog_id`, `tag_id`) VALUES
(1, 1, 8),
(2, 2, 2),
(3, 3, 6),
(4, 3, 8),
(5, 4, 5),
(6, 4, 4),
(7, 4, 4),
(8, 5, 3),
(9, 6, 4),
(10, 6, 9),
(11, 7, 7),
(12, 8, 9),
(13, 8, 3),
(14, 9, 4),
(15, 9, 10),
(16, 9, 2),
(17, 10, 2),
(18, 10, 4),
(19, 11, 8),
(20, 11, 2),
(21, 11, 4),
(22, 11, 2),
(23, 12, 3),
(24, 12, 6),
(25, 12, 8),
(26, 13, 9),
(27, 14, 8),
(28, 14, 7),
(29, 14, 8),
(30, 15, 6),
(31, 15, 7),
(32, 15, 3),
(33, 16, 1),
(34, 16, 4),
(35, 17, 7),
(36, 18, 6),
(37, 18, 9),
(38, 19, 4),
(39, 19, 1),
(40, 20, 3),
(41, 21, 9),
(42, 22, 5),
(43, 22, 8),
(44, 22, 6),
(45, 22, 6),
(46, 23, 2),
(47, 23, 7),
(48, 23, 9),
(49, 23, 2),
(50, 24, 7),
(51, 24, 1),
(52, 24, 8),
(53, 24, 9),
(54, 25, 2),
(55, 25, 6),
(56, 25, 1),
(57, 26, 10),
(58, 26, 4),
(59, 26, 4),
(60, 27, 4),
(61, 27, 10),
(62, 28, 5),
(63, 29, 7),
(64, 29, 6),
(65, 29, 9),
(66, 30, 6),
(67, 30, 2),
(68, 31, 5),
(69, 31, 8),
(70, 31, 1),
(71, 31, 7),
(72, 32, 9),
(73, 32, 3),
(74, 33, 2),
(75, 33, 1),
(76, 34, 3),
(77, 34, 6),
(78, 35, 6),
(79, 35, 5),
(80, 36, 4),
(81, 36, 4),
(82, 36, 4),
(83, 36, 8),
(84, 37, 1),
(85, 37, 5),
(86, 38, 4),
(87, 38, 9),
(88, 38, 4),
(89, 39, 3),
(90, 40, 7),
(91, 41, 9),
(92, 42, 6),
(93, 42, 10),
(94, 42, 9),
(95, 43, 6),
(96, 43, 9),
(97, 43, 6),
(98, 44, 3),
(99, 44, 8),
(100, 45, 4),
(101, 46, 5),
(102, 46, 10),
(103, 46, 3),
(104, 46, 5),
(105, 47, 10),
(106, 47, 6),
(107, 47, 2),
(108, 47, 9),
(109, 48, 6),
(110, 48, 9),
(111, 49, 2),
(112, 49, 7),
(113, 49, 8),
(114, 49, 10),
(115, 50, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_25_200048_create_blogs_table', 1),
(6, '2022_02_26_093620_create_tags_table', 1),
(7, '2022_02_26_094007_create_blog_tags_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Assumenda.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(2, 'Quia.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(3, 'Aut earum.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(4, 'Est sint.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(5, 'Eveniet.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(6, 'Sint nisi.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(7, 'Est at.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(8, 'Et quas.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(9, 'Fuga.', '2022-02-27 16:33:30', '2022-02-27 16:33:30'),
(10, 'A.', '2022-02-27 16:33:30', '2022-02-27 16:33:30');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tags_tag_id_foreign` (`tag_id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
