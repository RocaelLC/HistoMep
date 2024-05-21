import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/home_controller.dart';
import 'package:flutter_application_1/Pantallas/registrarse_screen.dart';
import 'package:flutter_application_1/Pantallas/registroImp.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorText = '';

  Future<void> _handleLogin() async {
    try {
      // Llama a la función de inicio de sesión
      final user = await loginWithEmailAndPassword(_emailController.text, _passwordController.text);
      
      // Si la autenticación es exitosa, navega a la pantalla deseada
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => registroImp()), // Reemplaza "OtraPantalla" con el nombre de tu pantalla
      );
      
      // Realiza acciones adicionales según tus necesidades
      setState(() {
        _errorText = ''; // Limpia el mensaje de error
      });
    } catch (error) {
      setState(() {
        _errorText = 'Error al iniciar sesión ';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Inicio de sesión')),
      backgroundColor: const Color.fromARGB(255, 78, 165, 236),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  Column(
          
          children: [
           
           
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Correo electrónico'),
            ),
            
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            if (_errorText.isNotEmpty)
              Text(
                _errorText,
                style: TextStyle(color: Colors.red),
              ),
            ElevatedButton(
              onPressed: _handleLogin,
              child: Text('Iniciar sesión'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navega a la pantalla de registro al presionar el botón de registro
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


 