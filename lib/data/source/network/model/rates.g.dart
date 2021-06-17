// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rates _$RatesFromJson(Map<String, dynamic> json) {
  return Rates(
    id: json['Cur_ID'] as int,
    date: json['Date'] as String,
    abbreviation: json['Cur_Abbreviation'] as String,
    rate: (json['Cur_OfficialRate'] as num)?.toDouble(),
  )..scale = json['Cur_Scale'] as int;
}

Map<String, dynamic> _$RatesToJson(Rates instance) => <String, dynamic>{
      'Cur_ID': instance.id,
      'Date': instance.date,
      'Cur_Abbreviation': instance.abbreviation,
      'Cur_Scale': instance.scale,
      'Cur_OfficialRate': instance.rate,
    };
