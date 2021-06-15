import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unified_v2_app/domain/model/rates.dart';
import 'package:unified_v2_app/domain/usecase/get_rates_usecase.dart';

class RatesBloc extends Bloc<RatesEvent, Rates> {
  GetRatesUseCase _getRatesUseCase;
  /// {@macro counter_bloc}
  RatesBloc(this._getRatesUseCase) : super(Rates()){
    add(RatesEvent.init);
  }

  @override
  Stream<Rates> mapEventToState(RatesEvent event) async* {
    switch (event) {
      case RatesEvent.init:
        var rates = await _getRatesUseCase.execute(null);
        yield rates;
        break;
      default:
        addError(Exception('unsupported event'));
    }
  }
}

/// Event being processed by [CounterBloc].
enum RatesEvent {
  init,
}