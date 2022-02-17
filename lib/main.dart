import 'package:bytebank/database/app_database.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(BytebankApp());
  save(Contact(0, 'Fran', 1000));
  findAll().then((contacts) => debugPrint(contacts.toString()));
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

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
