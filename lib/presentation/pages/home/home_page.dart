import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:unified_v2_app/domain/usecase/get_rates_usecase.dart';
import 'package:unified_v2_app/presentation/pages/counter/counter_bloc.dart';
import 'package:unified_v2_app/presentation/pages/counter/counter_page.dart';
import 'package:unified_v2_app/presentation/pages/rates/rates_bloc.dart';
import 'package:unified_v2_app/presentation/pages/rates/rates_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final childPages = [
    BlocProvider<CounterBloc>(
      create: (_) => CounterBloc(),
      child: CounterPage(),
    ),
    BlocProvider<RatesBloc>(
      create: (_) => RatesBloc(GetIt.instance<GetRatesUseCase>()),
      child: RatesPage(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: childPages[_selectedIndex], //
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded),
              label: 'rates'
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
