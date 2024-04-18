import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/imp_controller.dart';
import 'package:flutter_application_2/pantallas/RegistroImpScreen.dart';
import 'package:flutter_application_2/pantallas/permisos_screen.dart';
import 'package:flutter_application_2/pantallas/recetas_screen.dart';
import 'package:flutter_application_2/pantallas/seguimiento_screen.dart';

class registroImp extends StatefulWidget {
  @override
  State<registroImp> createState() => _ImpEscreenState();
}

class _ImpEscreenState extends State<registroImp> {
  late ImpController _controller;
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidosController = TextEditingController();
  DateTime? _fechaNacimiento;
  bool _opcion1Seleccionada = false;
  bool _opcion2Seleccionada = false;
  int _opcionSeleccionada = -1;

  @override
  void initState() {
    super.initState();
    _controller = ImpController();
  }

  void _handleDateOfBirth(DateTime date) {
    setState(() {
      _fechaNacimiento = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _apellidos;
    var _curpController;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 204, 214),
      appBar: AppBar(
        title: Text('Generar IMP'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _apellidos,
              decoration: InputDecoration(labelText: 'Apellidos'),
            ),
            SizedBox(height: 20),
            Text('Fecha de Nacimiento'),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null && pickedDate != _fechaNacimiento) {
                  _handleDateOfBirth(pickedDate);
                }
              },
              child: Text(_fechaNacimiento != null
                  ? '${_fechaNacimiento!.day}/${_fechaNacimiento!.month}/${_fechaNacimiento!.year}'
                  : 'Seleccionar fecha'),
            ),
            TextFormField(
              controller: _curpController,
              decoration: InputDecoration(labelText: 'CURP'),
            ),
            
            
          
        
            SizedBox(height: 20),
            Text('Seleciona tu sexo'),
            CheckboxListTile(
              title: Text('Hombre'),
              value: _opcion1Seleccionada,
              onChanged: (newValue) {
                setState(() {
                  _opcion1Seleccionada = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Mujer'),
              value: _opcion2Seleccionada,
              onChanged: (newValue) {
                setState(() {
                  _opcion2Seleccionada = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Estado cívil'),
            RadioListTile(
              title: Text('Soltero'),
              value: 0,
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value as int;
                });
              },
            ),
            RadioListTile(
              title: Text('Casado'),
              value: 1,
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value as int;
                });
              },
            ),
            RadioListTile(
              title: Text('Union libre'),
              value: 2,
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value as int;
                });
              },
            ),
            RadioListTile(
              title: Text('Viudo'),
              value: 3,
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value as int;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
    // Obtener datos de los controllers
            String nombre = _nombreController.text;
            String apellidos = _apellidosController.text;

    // Navegar a la pantalla de RegistroImpScreen con los datos
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => RegistroImpScreen(
            nombre: nombre,
            apellidos: apellidos, fechaNacimiento: '', curp: '',
        ),
      ),
    );
  },
  child: Text('Siguiente'),
),
          ],
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
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ImpController>('_controller', _controller));
  }
}
