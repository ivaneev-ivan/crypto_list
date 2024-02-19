import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CryptoListScreen extends StatelessWidget {
  const CryptoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CryptoMegaListApp"),
        ),
        body: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, i) =>
                const CryptoCoinTile(coinName: "Bitcoin")));
  }
}
