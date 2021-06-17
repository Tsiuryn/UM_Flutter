class RatesEntity {
  List<RateModel> items;
  RatesEntity({this.items});
}

class RateModel {
  int id;
  String date;
  String abbreviation;
  String rate;
  int scale;

  RateModel({this.id, this.date, this.abbreviation, this.rate, this.scale});
}