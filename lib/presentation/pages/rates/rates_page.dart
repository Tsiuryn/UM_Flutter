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
      body: BlocBuilder<RatesBloc, List<RateModel>>(
        builder: (childContext, data) {
          if (data != null ) {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${data[index].rate}"),
                  subtitle: Text("BYN = ${data[index].scale} ${data[index].abbreviation}"),
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
    );
  }
}
