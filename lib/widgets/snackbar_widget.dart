import 'package:flutter/material.dart';

void showSnackBarData(GlobalKey<ScaffoldState> scaffold) {
  SnackBar snackbar = SnackBar(
    content: Text('Tienes 4 mensajes nuevos.'),
    action: SnackBarAction(
      textColor: Colors.redAccent,
      label: 'OK',
      onPressed: () => scaffold.currentState.hideCurrentSnackBar()
    ),
  );
  scaffold.currentState.showSnackBar(snackbar);
}