import 'package:flutter/material.dart';

class DatePiker extends StatelessWidget {
  const DatePiker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DatePickerDialog(
        initialDate: DateTime(1980),
        firstDate: DateTime.now(),
        lastDate: DateTime.now());
  }
}
