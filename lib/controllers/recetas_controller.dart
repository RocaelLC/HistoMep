import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecetasController {
  // Método para abrir el documento al hacer clic en el botón
  void abrirDocumento(BuildContext context) async {
    const url = 'file:///C:/Users/USER/Downloads/PROTOTIPO%20DE%20BAJA%20PARTE%201.pdf'; // URL del documento PDF
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Si no se puede abrir el documento, muestra un mensaje de error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('No se pudo abrir el documento.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
