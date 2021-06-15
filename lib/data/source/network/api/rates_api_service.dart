import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:unified_v2_app/data/source/network/model/rates_body.dart';


part 'rates_api_service.g.dart';


@RestApi(baseUrl: "https://api.ratesapi.io/api")
abstract class RatesApiService {
  factory RatesApiService(Dio dio, {String baseUrl}) = _RatesApiService;

  @GET("/latest")
  Future<RatesBody> getRates();
}