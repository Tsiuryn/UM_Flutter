import 'package:unified_v2_app/data/source/network/model/rates.dart';
import 'package:unified_v2_app/data/source/network/rates_data_source.dart';
import 'package:unified_v2_app/domain/model/rates.dart';
import 'package:unified_v2_app/domain/repository/rates_repository.dart';

class RatesRepositoryImpl extends RatesRepository {
  RatesDataSource _dataSource;

  RatesRepositoryImpl(this._dataSource);

  @override
  Future<List<RateModel>> getRates() {
    return _dataSource.getRates().then((List<Rates> value) => value
        .map((Rates e) => RateModel(
            id: e.id,
            date: e.date,
            abbreviation: e.abbreviation,
            rate: e.rate.toString(),
            scale: e.scale))
        .toList());
  }
}
