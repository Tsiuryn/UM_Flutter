import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme.dart';
import 'counter_bloc.dart';

/// A [StatelessWidget] which demonstrates
/// how to consume and interact with a [CounterBloc].
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, int>(
        builder: (_, count) {
          return Center(
            child: Text('$count', style: Theme.of(context).textTheme.headline1),
          );
        },
      ),
      floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                child: const Icon(Icons.add),
                heroTag: 'increment',
                onPressed: () =>
                    context.read<CounterBloc>().add(CounterEvent.increment),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                child: const Icon(Icons.remove),
                heroTag: 'decrement',
                onPressed: () =>
                    context.read<CounterBloc>().add(CounterEvent.decrement),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                child: const Icon(Icons.brightness_6),
                heroTag: 'change_theme',
                onPressed: () => context.read<ThemeCubit>().toggleTheme(),
              ),
            ),
          ],
      ),
    );
  }
}
