import 'package:intl/intl.dart';

class Candlestickdata {
  Candlestickdata({
    this.X,
    this.open,
    this.close,
    this.low,
    this.high,
  });

  DateTime? X;
  num? open;
  num? close;
  num? low;
  num? high;
}
