
import 'package:unified_v2_app/data/source/network/api/rates_api_service.dart';
import 'package:unified_v2_app/data/source/network/model/rates_body.dart';

class RatesDataSource {
  RatesApiService _ratesApiService;

  RatesDataSource(this._ratesApiService);

  Future<RatesBody> getRates() {
    return _ratesApiService.getRates();
  }
}