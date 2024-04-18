import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/registrarse_controller.dart';

class home_controller extends StatelessWidget {
  final RegistrarseController controller = RegistrarseController(); // Instancia del controlador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Center(
        child: Column(
          children: [
            // Contenido del formulario de registro aquí
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Usuario/Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Repetir Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ],
        ),
          ),
          );
  }
}
