// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RatesApiService implements RatesApiService {
  _RatesApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.ratesapi.io/api';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<RatesBody> getRates() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/latest',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = RatesBody.fromJson(_result.data);
    return value;
  }
}
