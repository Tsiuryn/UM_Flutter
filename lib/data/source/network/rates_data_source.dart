import 'package:unified_v2_app/data/source/network/api/rates_api_service.dart';
import 'package:unified_v2_app/data/source/network/model/rates.dart';

class RatesDataSource {
  RatesApiService _ratesApiService;

  RatesDataSource(this._ratesApiService);

  Future<List<Rates>> getRates() {
    return _ratesApiService.getRates();
  }
}