import 'package:unified_v2_app/data/source/network/rates_data_source.dart';
import 'package:unified_v2_app/domain/model/rates.dart';
import 'package:unified_v2_app/domain/repository/rates_repository.dart';

class RatesRepositoryImpl extends RatesRepository {
  RatesDataSource _dataSource;

  RatesRepositoryImpl(this._dataSource);

  @override
  Future<Rates> getRates() {
    return _dataSource.getRates().asStream().map((src) {
      return Rates(
        base: src.base,
        date: src.date,
        items: src.rates
            .map((String key, value) {
              return MapEntry(
                key,
                Rate(name: key, scale: value),
              );
            })
            .values
            .toList(),
      );
    }).first;
  }
}
