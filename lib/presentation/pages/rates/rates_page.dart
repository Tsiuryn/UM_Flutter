import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unified_v2_app/domain/model/rates.dart';
import 'package:unified_v2_app/presentation/pages/rates/rates_bloc.dart';

class RatesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RatesPageState();
  }
}

class _RatesPageState extends State<RatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RatesBloc, Rates>(
        builder: (childContext, data) {
          if (data != null && data.items != null) {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              itemCount: data.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${data.items[index].name}"),
                  subtitle: Text("${data.items[index].scale}"),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      /*
      body: FutureBuilder(
        future: getIt<GetRatesUseCase>().execute(null),
        builder: (context, AsyncSnapshot<Rates> snapshot) {
          if (snapshot.data != null && snapshot.data.items != null) {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              itemCount: snapshot.data.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${snapshot.data.items[index].name}"),
                  subtitle: Text("${snapshot.data.items[index].scale}"),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      */
      /*
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item: $index"),
          );
        },
      ),
      */
    );
  }
}
