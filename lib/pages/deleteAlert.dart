import 'package:flutter/material.dart';

class DeleteAlert extends StatelessWidget {
  const DeleteAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Confirm Delete",
        style: Theme.of(context).textTheme.bodyText1,
      ),
      content: Text(
        "Are you sure you want to delete?",
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text(
              "No",
              style: Theme.of(context).textTheme.headline1,
            )),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(
              "Yes",
              style: Theme.of(context).textTheme.headline1,
            )),
      ],
    );
  }
}
