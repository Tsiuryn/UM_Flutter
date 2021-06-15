class Rates {
  String base;
  String date;
  List<Rate> items;

  Rates({this.base, this.date, this.items});
}

class Rate {
  String name;
  double scale;

  Rate({this.name, this.scale});
}