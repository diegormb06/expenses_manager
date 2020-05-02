import 'package:flutter/cupertino.dart';

class Transactions {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  Transactions({
    @required this.id,
    @required this.title,
    @required this.value,
    @required this.date,
  });
}
