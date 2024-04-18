import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/RegistroImpScreen.dart';
import 'package:flutter_application_2/pantallas/recetas_screen.dart';
import 'package:flutter_application_2/pantallas/registroImp.dart';

class RegistrarseScreen extends StatefulWidget {
  @override
  State<RegistrarseScreen> createState() => _registrarseState();
}

class _registrarseState extends State<RegistrarseScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidosController = TextEditingController();
  // Otros controladores para los datos necesarios

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Campos de entrada para la información del usuario
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextFormField(
              controller: _apellidosController,
              decoration: InputDecoration(labelText: 'Apellidos'),
            ),
            // Otros campos de entrada para la información necesaria

            ElevatedButton(
              onPressed: () {
                // Cuando se presiona el botón "Siguiente"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistroImpScreen(
                      nombre: _nombreController.text,
                      apellidos: _apellidosController.text, fechaNacimiento: '', curp: '',
                      // Otros datos necesarios
                    ),
                  ),
                );
              },
              child: Text('Siguiente'),
            ),
          ],
        ),
      ),
    );
  }
}
