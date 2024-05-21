import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pantallas/InicioScreen.dart';
import 'package:flutter_application_1/Pantallas/login_screen.dart';



import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: InicioScreen(), // Establece la pantalla de inicio como la pantalla principal
    );
  }
}