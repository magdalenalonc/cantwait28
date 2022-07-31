import 'package:intl/intl.dart';

class ItemModel {
  // constructor
  ItemModel({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.releaseDate,
  });

  // properites
  final String id;
  final String title;
  final String imageURL;
  final DateTime releaseDate;

  // method
  String daysLeft() {
    return releaseDate.difference(DateTime.now()).inDays.toString();
  }

  String releaseDateFormatted() {
    return DateFormat.yMMMMEEEEd().format(releaseDate);
  }
}
