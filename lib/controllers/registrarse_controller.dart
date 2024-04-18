import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistrarseController {
  Future<bool> enviarDatosAlServidor(BuildContext context, String usuario, String contrasena) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');

    try {
      final response = await http.post(
        url,
        body: jsonEncode({
          'username': usuario,
          'password': contrasena,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 201) {
        // Si el usuario se registró correctamente, muestra un mensaje de éxito
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('¡Usuario registrado con éxito!'),
          ),
        );
        return true; // Indica que el registro fue exitoso
      } else {
        // Si hubo un error al registrar al usuario, muestra un mensaje de error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al registrar usuario. Inténtalo de nuevo más tarde.'),
          ),
        );
        return false; // Indica que el registro no fue exitoso
      }
    } catch (error) {
      // Si hubo un error durante la solicitud, muestra un mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error al conectar con el servidor. Inténtalo de nuevo más tarde.'),
        ),
      );
      return false; // Indica que la solicitud falló
    }
  }
}
