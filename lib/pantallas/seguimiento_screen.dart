import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pantallas/preguntasFrecuentes.dart';
import 'package:flutter_application_1/Pantallas/recetas_screen.dart';
import 'package:flutter_application_1/Pantallas/registroImp.dart';
import 'package:flutter_application_1/pantallas/permisos_screen.dart';

class seguimiento_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seguimiento'),
      ),
            drawer: Drawer(
        child: _menuDrawer(context),
      ),

      body: Center(
        child: Column(
          children: [Image.network('https://cdn-icons-png.flaticon.com/512/1238/1238169.png'),
        const Text(
              'Aqui se mostrara el seguimiento de cada paciente y sus doctores',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),

          ]
          
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
        currentIndex: 2, // Coloca aquí el índice de la pantalla actual
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Lógica para manejar la navegación entre las diferentes opciones
          switch (index) {
            case 0:
              // No es necesario hacer nada ya que estamos en la pantalla actual
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => registroImp()),
              );
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
                MaterialPageRoute(builder: (context) => PermisosScreen()),
              );
              break;
              case 4:
              // Navegar a la pantalla de Permisos
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => recetas_screen()),
              );
              break;
          }
        },
      ),
    );
  }
  Widget _menuDrawer(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Facebook_Home_logo.svg/250px-Facebook_Home_logo.svg.png'),
              ),
              SizedBox(height: 10),
              Text(
                'HistoMep',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => registroImp()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.question_answer),
          title: Text('Preguntas frecuentes'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preguntasFrecuentes()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.view_agenda),
          title: Text('Vista guiada'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Conócenos'),
          onTap: () {},
        ),
      ],
    );
  }
}

