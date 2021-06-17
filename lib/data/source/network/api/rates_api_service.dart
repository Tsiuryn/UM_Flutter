import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:unified_v2_app/data/source/network/model/rates.dart';
part 'rates_api_service.g.dart';

@RestApi(baseUrl: "https://www.nbrb.by/api/exrates")
abstract class RatesApiService {
  factory RatesApiService(Dio dio, {String baseUrl}) = _RatesApiService;

  @GET("/rates?periodicity=0")
  Future<List<Rates>> getRates();
}