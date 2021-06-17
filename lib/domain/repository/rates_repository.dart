import 'package:unified_v2_app/domain/model/rates.dart';

abstract class RatesRepository {
  Future<List<RateModel>> getRates();
}