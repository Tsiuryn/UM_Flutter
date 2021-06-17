// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RatesApiService implements RatesApiService {
  _RatesApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://www.nbrb.by/api/exrates';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<Rates>> getRates() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('/rates?periodicity=0',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Rates.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
