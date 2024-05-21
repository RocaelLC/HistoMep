import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pantallas/EscannearRecetaScreen.dart';
import 'package:image_picker/image_picker.dart';

class RecetasController {
  Future<void> escanearReceta(BuildContext context) async {
    // Aquí deberías implementar la lógica para abrir la cámara y escanear la receta
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EscanearRecetaScreen(camera: firstCamera),
      ),
    );
  }

  Future<void> subirReceta(BuildContext context) async {
    // Aquí deberías implementar la lógica para abrir la galería de imágenes y subir la receta
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Aquí puedes trabajar con la imagen seleccionada
    }
  }
}
