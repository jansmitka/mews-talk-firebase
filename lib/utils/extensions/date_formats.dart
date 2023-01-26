import 'package:intl/intl.dart';

String showFormattedDate(DateTime date) {
  return DateFormat('d.M.yyyy H:mm').format(date);
}
