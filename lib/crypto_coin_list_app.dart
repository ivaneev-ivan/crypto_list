import 'package:crypto_list/router/router.dart';
import 'package:crypto_list/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCoinListApp extends StatelessWidget {
  const CryptoCoinListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      routes: routes,
    );
  }
}
