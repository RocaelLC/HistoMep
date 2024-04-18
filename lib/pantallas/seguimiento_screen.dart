import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/imp_controller.dart';
import 'package:flutter_application_2/pantallas/permisos_screen.dart';
import 'package:flutter_application_2/pantallas/recetas_screen.dart';

class seguimiento_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seguimiento'),
      ),
      body: Center(
        child: Column(
          children: [Image.network('https://cdn-icons-png.flaticon.com/512/1238/1238169.png'),
        Text(
              'Aqui se mostrara el seguimiento de cada paciente y sus doctores',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),

          ]
          
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
        currentIndex: 2, // Coloca aquí el índice de la pantalla actual
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
              case 4:
              // Navegar a la pantalla de Permisos
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImpEscreen()),
              );
              break;
          }
        },
      ),
    );
  }
}
