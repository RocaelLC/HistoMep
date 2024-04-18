import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/home_screen.dart'; // Importa la pantalla de inicio

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HistoMep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Establece la pantalla de inicio como la pantalla principal
    );
  }
}
