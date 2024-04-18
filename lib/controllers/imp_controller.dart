import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/permisos_screen.dart';
import 'package:flutter_application_2/pantallas/recetas_screen.dart';
import 'package:flutter_application_2/pantallas/seguimiento_screen.dart';
import 'package:image_picker/image_picker.dart';

class ImpController {
  late File _image;

  Future<File?> selectImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      return _image;
    } else {
      return null;
    }
  }

  // Aquí puedes agregar más métodos y lógica relacionada con la pantalla imp_escreen
}

class ImpEscreen extends StatefulWidget {
  const ImpEscreen({super.key});

  @override
  State<ImpEscreen> createState() => _ImpEscreenState();
}

class _ImpEscreenState extends State<ImpEscreen> {
  late ImpController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ImpController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                File? image = await _controller.selectImage(context);
                if (image != null) {
                  setState(() {
                    // Actualiza la UI con la imagen seleccionada
                  });
                } else {
                  // Maneja el caso en que no se seleccione ninguna imagen
                }
              },
              child: const Text('Seleccionar foto de perfil'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_rounded),
            label: 'Recetas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Seguimiento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: 'Permisos',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          switch (index) {
            case 0:
              // Lógica para la pantalla de Inicio
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => recetas_screen()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => seguimiento_screen()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => permisos_screen()),
              );
              break;
          }
        },
      ),
    );
  }
}
