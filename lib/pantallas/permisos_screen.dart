import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pantallas/preguntasFrecuentes.dart';
import 'package:flutter_application_1/Pantallas/registroImp.dart';
import 'package:permission_handler/permission_handler.dart';

class PermisosScreen extends StatefulWidget {
  @override
  _PermisosScreenState createState() => _PermisosScreenState();
}

class _PermisosScreenState extends State<PermisosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 204, 236),
      appBar: AppBar(
        title: Text('Permisos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _solicitarPermiso(Permission.camera);
              },
              child: Text('Permitir cámara'),
            ),
            ElevatedButton(
              onPressed: () {
                _solicitarPermiso(Permission.location);
              },
              child: Text('Permitir ubicación'),
            ),
            ElevatedButton(
              onPressed: () {
                _solicitarPermiso(Permission.microphone);
              },
              child: Text('Permitir micrófono'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _solicitarPermiso(Permission permission) async {
    final status = await permission.request();
    if (status.isGranted) {
      // Permiso otorgado
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Permiso otorgado')),
      );
    } else if (status.isDenied) {
      // Permiso denegado
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Permiso denegado')),
      );
    } else if (status.isPermanentlyDenied) {
      // Permiso permanentemente denegado
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Permiso permanentemente denegado')),
      );
    }
  }
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
