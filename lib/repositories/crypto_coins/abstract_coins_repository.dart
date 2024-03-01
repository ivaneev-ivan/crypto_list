import 'package:crypto_list/repositories/crypto_coins/models/CryptoCoinModel.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
