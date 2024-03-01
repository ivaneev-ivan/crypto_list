import 'package:crypto_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
        title: Text(coin.name, style: theme.textTheme.bodyMedium),
        subtitle: Text("${coin.priceInUsd.toStringAsFixed(4)}\$",
            style: theme.textTheme.labelSmall),
        leading: Image.network(coin.imageUrl),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () =>
            Navigator.of(context).pushNamed('/coins', arguments: coin));
  }
}
