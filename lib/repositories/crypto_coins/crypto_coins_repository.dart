import 'package:crypto_list/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:dio/dio.dart';

import 'models/models.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  final Dio dio;

  CryptoCoinsRepository({required this.dio});

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,AID,CAG,DOV&tsyms=USD');
    final data = (response.data as Map<String, dynamic>)['RAW'];
    List<CryptoCoin> cryptoCoinList =
        List<CryptoCoin>.from(data.entries.map((e) {
      final usd =
          (e.value as Map<String, dynamic>)["USD"] as Map<String, dynamic>;
      final price = usd['PRICE'];
      final imageUrl = usd['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          priceInUsd: price,
          imageUrl: "https://www.cryptocompare.com/$imageUrl");
    }));
    return cryptoCoinList;
  }
}
