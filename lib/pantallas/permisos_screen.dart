import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/recetas_screen.dart';
import 'package:flutter_application_2/pantallas/registroImp.dart';
import 'package:flutter_application_2/pantallas/seguimiento_screen.dart';

class permisos_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 204, 236),
      appBar: AppBar(
        title: Text('Permisos'),
      ),
      body: Center(
        child: Column(
          children: [Image.network('https://cdn-icons-png.flaticon.com/512/1238/1238169.png'),
        Text(
              'AQui se mostraran los permisos del usuario a su doctor',
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
        currentIndex: 3, // Coloca aquí el índice de la pantalla actual
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
                MaterialPageRoute(builder: (context) => registroImp()),
              );
              break;
          }
        },
      ),
    );
  }
}
