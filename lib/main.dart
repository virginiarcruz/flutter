import 'package:bytebank/http/webclient.dart';
import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(BytebankApp());
  findAll();
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(),
      // theme: ThemeData(
      //   primaryColor: Colors.green[900],
      //   accentColor: Colors.blue[700],
      //   buttonTheme: ButtonThemeData(
      //     textTheme: ButtonTextTheme.primary,
      //   )
      // ),
      // home: ListaTransferencias(),
    );
  }
}
