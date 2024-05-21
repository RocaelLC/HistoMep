import 'package:flutter/material.dart';
import 'package:flutter_application_1/pantallas/permisos_screen.dart';
import 'package:flutter_application_1/pantallas/recetas_screen.dart';
import 'package:flutter_application_1/pantallas/seguimiento_screen.dart';

class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int _selectedIndex = 0;

  // Lista de pantallas para cada opción del menú
  final List<Widget> _widgetOptions = <Widget>[
    seguimiento_screen(),
    recetas_screen(),
    permisos_screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoMedic'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Seguimientos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'IMP',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Recetas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security),
            label: 'Permisos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}
