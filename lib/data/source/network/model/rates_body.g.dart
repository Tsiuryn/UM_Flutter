// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatesBody _$RatesBodyFromJson(Map<String, dynamic> json) {
  return RatesBody(
    base: json['base'] as String,
    date: json['date'] as String,
    rates: (json['rates'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$RatesBodyToJson(RatesBody instance) => <String, dynamic>{
      'base': instance.base,
      'date': instance.date,
      'rates': instance.rates,
    };
