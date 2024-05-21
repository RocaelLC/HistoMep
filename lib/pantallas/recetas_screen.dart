import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pantallas/login_screen.dart';
import 'package:flutter_application_1/Pantallas/permisos_screen.dart';
import 'package:flutter_application_1/Pantallas/preguntasFrecuentes.dart';
import 'package:flutter_application_1/Pantallas/registroImp.dart';
import 'package:flutter_application_1/Pantallas/seguimiento_screen.dart';
import 'package:flutter_application_1/controllers/recetas_controller.dart';
import 'package:flutter_application_1/pantallas/permisos_screen.dart';

class recetas_screen extends StatelessWidget {
  final RecetasController controller = RecetasController(); // Instancia del controlador

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 145, 200, 228),
    appBar: AppBar(
      
      title: Text('Recetas'),
    ),
     drawer: Drawer(
        child: _menuDrawer(context),
      ),
    body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 420.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Botón 1
              Column(
                children: [
                  const Icon(Icons.camera_alt_sharp,
                  size: 100),
                   // Icono
                  SizedBox(height: 25), // Espacio entre el icono y el botón
                  ElevatedButton(
                    onPressed: () {
                      controller.escanearReceta(context);
                    },
                    child: Text('Escanear Receta'),
                  ),
                ],
              ),
              // Botón 2
              Column(
                children: [
                  const Icon(Icons.photo_album_rounded,
                   size: 100), // Icono
                  SizedBox(height: 25), // Espacio entre el icono y el botón
                  ElevatedButton(
                    onPressed: () {
                      controller.subirReceta(context);
                    },
                    child: Text('Subir Receta'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
        currentIndex: 1, // Coloca aquí el índice de la pantalla actual
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Lógica para manejar la navegación entre las diferentes opciones
          switch (index) {
            case 0:
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
              //Navigator.push(
                //context,
              //);
              break;
              
          }
        },
      ),
    );
    
  }
  Widget _menuDrawer(BuildContext context) {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signOut(BuildContext context) async {
    await _auth.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()), // Reemplaza YourLoginScreen() con tu pantalla de inicio de sesión
    );
  }

  return ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Facebook_Home_logo.svg/250px-Facebook_Home_logo.svg.png'),
            ),
            SizedBox(height: 10),
            Text(
              'HistoMep',
              style: TextStyle(fontSize: 30, color: Colors.white),
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
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Cerrar Sesión'),
        onTap: () => _signOut(context), // Llama a la función _signOut() al hacer clic
      ),
    ],
  );
  }
}


     