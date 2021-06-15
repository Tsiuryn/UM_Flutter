
import 'package:json_annotation/json_annotation.dart';
part 'rates_body.g.dart';

/*
{
  "base": "EUR",
  "date": "2020-12-14",
  "rates": {
    "GBP": 0.907,
    "HKD": 9.4274,
    "IDR": 17216.41,
    "ILS": 3.9614,
    "DKK": 7.4421,
    "INR": 89.4505,
    "CHF": "..."
  }
}
 */
@JsonSerializable()
class RatesBody {
  String base;
  String date;
  Map<String, double> rates;

  RatesBody({this.base, this.date, this.rates});

  factory RatesBody.fromJson(Map<String, dynamic> json) => _$RatesBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RatesBodyToJson(this);
}