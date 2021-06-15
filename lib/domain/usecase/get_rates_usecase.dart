import 'package:unified_v2_app/domain/model/rates.dart';
import 'package:unified_v2_app/domain/repository/rates_repository.dart';

import 'base/future_usecase.dart';



class GetRatesUseCase extends FutureUseCase<void, Rates> {
  RatesRepository _ratesRepository;

  GetRatesUseCase(this._ratesRepository);

  @override
  Future<Rates> execute(void params) {
    return _ratesRepository.getRates();
  }

}
