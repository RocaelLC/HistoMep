import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/permisos_screen.dart';
import 'package:flutter_application_2/pantallas/recetas_screen.dart';
import 'package:flutter_application_2/pantallas/seguimiento_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegistroImpScreen extends StatelessWidget {
  final String nombre;
  final String apellidos;
  final String fechaNacimiento;
  final String curp;

  RegistroImpScreen({
    required this.nombre,
    required this.apellidos,
    required this.fechaNacimiento,
    required this.curp,
  });

  @override
  Widget build(BuildContext context) {
    String qrData =
        'Nombre: $nombre\nApellidos: $apellidos\nFecha de Nacimiento: $fechaNacimiento\nCURP: $curp\n';

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 204, 214),
      appBar: AppBar(
        title: Text('IMP'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Código QR para: $nombre $apellidos',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Recuerda que este código es único',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0), // Espacio entre el texto y el código QR
              QrImageView(
                data: qrData,
                version: QrVersions.auto,
                size: 300.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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
          // Lógica para manejar la navegación entre las diferentes opciones
          switch (index) {
            case 0:
              // No es necesario hacer nada ya que estamos en la pantalla actual
              break;
            case 1:
              // Navegar a la pantalla de Recetas
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => recetas_screen()),
              );
              break;
            case 2:
              // Navegar a la pantalla de Seguimiento
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => seguimiento_screen()),
              );
              break;
            case 3:
              // Navegar a la pantalla de Permisos
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
