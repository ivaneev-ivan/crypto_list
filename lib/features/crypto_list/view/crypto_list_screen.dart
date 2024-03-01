import 'package:crypto_list/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:crypto_list/features/crypto_list/crypto_list.dart';
import 'package:crypto_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  final _cryptoListBloc = CryptoListBloc(GetIt.I<AbstractCoinsRepository>());

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CryptoMegaListApp"),
        ),
        body: BlocBuilder<CryptoListBloc, CryptoListState>(
          bloc: _cryptoListBloc,
          builder: (context, state) {
            final theme = Theme.of(context);
            if (state is CryptoListLoaded) {
              return ListView.separated(
                  padding: const EdgeInsets.only(top: 16),
                  itemCount: state.coinsList.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, i) =>
                      CryptoCoinTile(coin: state.coinsList[i]));
            }
            if (state is CryptoListLoadingFailure) {
              return Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    const Text('Something went wrong'),
                    Text('Please try again later',
                        style:
                            theme.textTheme.labelSmall?.copyWith(fontSize: 16))
                  ]));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}
