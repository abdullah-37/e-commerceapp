import 'package:intl/intl.dart';

class MyFormats {
  //Date Format
  static String dateFormat(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }

  //Currency Format
  static String currencyFormat(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  //Phone Number Format

  //International Phone Number Format
}
