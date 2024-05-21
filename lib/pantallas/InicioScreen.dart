import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pantallas/login_screen.dart';
import 'package:flutter_application_1/Pantallas/registrarse_screen.dart';
import 'package:flutter_application_1/Pantallas/registroImp.dart';
class InicioScreen extends StatefulWidget {
  @override
  _InicioScreen createState() => _InicioScreen();
}

class _InicioScreen extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 204, 236),
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset('images/logo.png'),
            Text('Elige una opcion'),
            
            ElevatedButton(
              onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => registroImp()),
                );
                
              },
              child: Text('Iniciar sesion'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => registrarse_screen()),
                );
               
              },
              child: Text('Registrarse'),
            ),
            
          ],
        ),
      ),
    );
  }
}