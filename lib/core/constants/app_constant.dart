// Project imports:
import 'package:portfolio/core/model/product.dart';

class AppConstant {
  static List<Product> products = [
    Product(
      id: '1',
      name: 'FUT Tool',
      version: '16.0.0',
      thumbnail: 'assets/thumbnail.jpg',
      createdAt: 'April 25, 2022',
      description:
          'Welcome back to FUT Ultimate Tool 2022! We have improved the newest version of our FUT 22 app in every way. Get ready for even more new modes and more exciting content than ever before. The 22 FUT season officially starts now, and we can’t wait to make it the best one yet.',
      technologies: [
        'Flutter',
        'Dart',
        'Bloc',
        'Clean Architecture',
        'UI/UX Designer',
        'Banner Ads',
        'Admob',
      ],
    ),
    Product(
      id: '2',
      name: 'Testnet Wallet',
      version: '1.0.9',
      thumbnail: 'assets/crypto_wallet.jpg',
      createdAt: 'March 28, 2022',
      description:
          'Testnet Wallet is the official cryptocurrency wallet of Testnet. You can send, receive and store ETH and many other cryptocurrencies and digital assets safely and securely with the Testnet Wallet mobile app.',
      technologies: [
        'Flutter',
        'Dart',
        'Provider',
        'Clean Architecture',
      ],
    ),
    Product(
      id: '3',
      name: 'Lắc bầu cua: Trò chơi dân gian',
      version: '1.0.9',
      thumbnail: 'assets/shake_crab.jpg',
      createdAt: 'March 26, 2022',
      description:
          'Bầu Cua 2022 – Game Bầu Cua Mới Nhất là một ứng dụng giải trí được tạo dành cho điện thoại di động mô phỏng trò chơi: Bầu Cua Tôm Cá hay Bầu Cua Cá Cọp ( Lắc Bầu Cua), một trò chơi truyền thống ngày tết ở Việt Nam và Phương Đông. Bầu Cua 2022 sử dụng hình ảnh 6 con linh vật Bầu, Cua, Tôm, Cá, Gà, Nai làm 6 ô cửa may mắn cho người chơi lựa chọn con vật may mắn nhất.',
      technologies: [
        'Flutter',
        'Dart',
        'Bloc',
        'Clean Architecture',
      ],
    ),
    Product(
      id: '4',
      name: 'IT Quiz : Lean To Earn',
      version: '1.0.6',
      thumbnail: 'assets/quiz.jpg',
      createdAt: 'January 19, 2022',
      description:
          'Use the IT Quiz app to learn anything, anywhere. You can study on your own or engage in group quizzes, assignments, and presentations—in person and remotely. Quizizz is used by more than 20 million people per month in schools, homes, and offices around the world.',
      technologies: [
        'Flutter',
        'Dart',
        'Bloc',
        'Clean Architecture',
      ],
    ),
  ];
}
