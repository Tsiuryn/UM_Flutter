import 'package:json_annotation/json_annotation.dart';
part 'rates.g.dart';

@JsonSerializable()
class Rates {
  @JsonKey(name: 'Cur_ID')
  int id;

  @JsonKey(name: 'Date')
  String date;

  @JsonKey(name: 'Cur_Abbreviation')
  String abbreviation;

  @JsonKey(name: 'Cur_Scale')
  int scale;

  @JsonKey(name: 'Cur_OfficialRate')
  double rate;


  Rates({this.id, this.date, this.abbreviation, this.rate});

  factory Rates.fromJson(Map<String, dynamic> json) => _$RatesFromJson(json);
  Map<String, dynamic> toJson() => _$RatesToJson(this);
}