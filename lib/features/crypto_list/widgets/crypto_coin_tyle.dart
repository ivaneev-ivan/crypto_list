import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coinName});

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
        title: Text(coinName, style: theme.textTheme.bodyMedium),
        subtitle: Text("2000\$", style: theme.textTheme.labelSmall),
        leading: SvgPicture.asset(
          'assets/img/bitcoin.svg',
          height: 30,
          width: 30,
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () =>
            Navigator.of(context).pushNamed('/coins', arguments: coinName));
  }
}
