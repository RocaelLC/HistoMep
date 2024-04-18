import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/recetas_controller.dart';
import 'package:flutter_application_2/pantallas/permisos_screen.dart';
import 'package:flutter_application_2/pantallas/seguimiento_screen.dart';

class recetas_screen extends StatelessWidget {
  final RecetasController controller = RecetasController(); // Instancia del controlador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 200, 228),
      appBar: AppBar(
        title: Text('Recetas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ23VrYkP0oKiaVpJC_GFyDu7f-QR7RKUDhGXzbaxRfNI4YChe7QxM1t_kf5UT40eXi9Q&usqp=CAU',
              width: 400, // Ancho de la imagen
            ),
            SizedBox(height: 20), // Espaciado entre la imagen y los botones

            // Primer botón y texto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Fecha:'),
                Text('Recetó:'),
                SizedBox(width: 10), // Espaciado entre el botón y el texto
                ElevatedButton(
                  onPressed: () {
                    // Llama al método para abrir el documento cuando se presiona el botón
                    controller.abrirDocumento(context);
                  },
                  child: Text('Ver Receta'),
                ),
              ],
            ),
            SizedBox(height: 20), // Espaciado entre los botones

            // Segundo botón y texto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Fecha:'),
                Text('Recetó:'),
                SizedBox(width: 10), // Espaciado entre el botón y el texto
                ElevatedButton(
                  onPressed: () {
                    // Agrega aquí la lógica para el segundo botón
                  },
                  child: Text('Ver Receta'),
                ),
              ],
            ),
            SizedBox(height: 20), // Espaciado entre los botones

            // Tercer botón y texto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Fecha:'),
                Text('Recetó:'),
                SizedBox(width: 10), // Espaciado entre el botón y el texto
                ElevatedButton(
                  onPressed: () {
                    // Agrega aquí la lógica para el tercer botón
                  },
                  child: Text('Ver Receta'),
                  
                ),
              ],
            ),
            SizedBox(height: 20),
            // Sección para escanear una receta con la cámara
            // Botón y texto para escanear una receta
            // Sección de botón y texto para escanear una receta
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                SizedBox(width: 10), // Espaciado entre el texto y el botón
                ElevatedButton(
                  onPressed: () {
                    // Agrega aquí la lógica para escanear una receta con la cámara
                  },
                  child: Text('Escanear Receta'),
                ),
              ],
            ),
            SizedBox(height: 20), // Espaciado entre los botones

            // Sección de botón y texto para seleccionar y subir un documento
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                SizedBox(width: 10), // Espaciado entre el texto y el botón
                ElevatedButton(
                  onPressed: () {
                    // Agrega aquí la lógica para seleccionar y subir un documento
                  },
                  child: Text('Subir Documento'),
                ),
              ],
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
        currentIndex: 1, // Coloca aquí el índice de la pantalla actual
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
}
