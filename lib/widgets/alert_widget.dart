import 'package:flutter/material.dart';

Future<void> showAlertDialogData(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Desarollador de App'),
        content: SingleChildScrollView(
          child: Text('Erik Garcia.')
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cerrar', style: TextStyle(fontSize: 17.0, color: Colors.red),),
            onPressed: () => Navigator.of(context).pop()
          )
        ]
      );
    }
  );
}