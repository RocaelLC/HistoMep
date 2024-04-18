// home_screen.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/preguntasFrecuentes.dart';
import 'package:flutter_application_2/pantallas/registrarse_screen.dart';
import 'package:flutter_application_2/pantallas/registroImp.dart';

//import 'package:flutter_application_2/pantallas/registrase_screen.dart'; // Importa la otra pantalla

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    File imageFile = File('assets/logo.png'); // Ruta relativa a la carpeta assets
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 204, 214),
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text('HistoMep'),
        centerTitle: true,
        actions: const [
          Padding(
              padding: EdgeInsets.all(15), child: Icon(Icons.notifications))
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment:  CrossAxisAligment.stretch,
            children: [
              _headerDrawer(context),
              _menuDrawer(context)
            ],
          )
      
          //child: const Center(child: Text('prueba button')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hola');
        },
        child: const Icon(Icons.message),

      ),
      
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/256/552/552848.png',
              width: 200, // Ancho de la imagen
              height: 200, // Alto de la imagen
              fit: BoxFit.contain, // Ajuste de la imagen
            ),
            SizedBox(height: 20),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
          
              decoration: InputDecoration(
              labelText: 'Usuario',
              border: OutlineInputBorder(),
              ),
            ),
            ),

            SizedBox(height: 20),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
              labelText: 'Contraseña',
              border: OutlineInputBorder(),
              ),
            ),
            ),
            
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              //logica
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => registroImp()),
            );
            },
            child: Text('Iniciar Sesion'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              //logica
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegistrarseScreen()),
            ); //este codigo es para navegar a otra pantalla
            
            },
            child: Text('Registrarse'),
            ),
      
          ],
        ),
      ),
    );
  }
  Material _headerDrawer(BuildContext context) {
    return Material(
              color: Colors.blue,
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,bottom: 28
                  ),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Facebook_Home_logo.svg/250px-Facebook_Home_logo.svg.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'HistoMep',
                      style: TextStyle(fontSize : 69.7, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }

  
  _menuDrawer(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: const Text('Inicio'),
          onTap: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
    ListTile(
          leading: Icon(Icons.question_answer),
          title: const Text('Preguntas frecuentes'),
          onTap: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => preguntasFrecuentes()),
            );
          },
        ),
      ListTile(
          leading: Icon(Icons.view_agenda),
          title: const Text('Vista guiada'),
          onTap: (){},
        ),
      ListTile(
          leading: Icon(Icons.message),
          title: const Text('Conocenos'),
          onTap: (){},
        ),
      ],
    );
  }
  }
  
  class ImageFile {
    File ImageFile1 = File('C:/Users/USER/StudioProjects/MyApplication/assets/logo.png');
  }