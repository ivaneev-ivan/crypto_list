import 'package:crypto_list/features/crypto_list/crypto_list.dart';
import 'package:crypto_list/features/crypto_coin/crypto_coin.dart';

final routes = {
  '/coins': (context) => const CryptoCoinScreen(),
  '/': (context) => const CryptoListScreen()
};