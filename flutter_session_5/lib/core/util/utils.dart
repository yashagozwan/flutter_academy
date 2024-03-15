import 'package:intl/intl.dart';

class Utils {
  static String dateFormat(String releaseDate) {
    final date = DateTime.parse(releaseDate);
    return DateFormat("dd MMMM yyyy").format(date);
  }
}
