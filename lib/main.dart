import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const backgroundColor = const Color.fromARGB(255, 32, 32, 32);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        dividerColor: Colors.white24,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: backgroundColor,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
            bodyMedium: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
            labelSmall: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w700,
                fontSize: 14)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CryptoMegaListApp"),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, i) => ListTile(
                title: Text("Bitcoin", style: theme.textTheme.bodyMedium),
                subtitle: Text("2000\$", style: theme.textTheme.labelSmall),
                leading: SvgPicture.asset(
                  'assets/img/bitcoin.svg',
                  height: 30,
                  width: 30,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              )),
    );
  }
}
