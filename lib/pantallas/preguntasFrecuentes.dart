import 'package:flutter/material.dart';

class preguntasFrecuentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 237, 240, 1),
      appBar: AppBar(
        title: Text('Preguntas Frecuentes'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: const <Widget>[
          ExpansionTile(
            title: Text(
              '¿Como registrarme?',
              style: TextStyle(fontSize: 20.0),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'para registrarte sigue los siguientes pasos: ingresa un correo electronico con el que puedas recibir'
                  'un codigo de seguridad, despues crea una contrseña y confirmala en la parte de abajo',
                  
                  style: TextStyle(fontSize: 16.0),
                ),
                
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text(
              'Aun no recibo el codigo de verificacion en mi correo',
              style: TextStyle(fontSize: 20.0),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Si aun no recibes el codigo de verificacion, revisa tu bandeja de spam o cumunmente conocido como "no deseados'
                  'tambien puedes verificar tu conexion a internet',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
          // Agrega más ExpansionTile para más preguntas
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text(
              '¿Mi IMP es unico?',
              style: TextStyle(fontSize: 20.0),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Tu IMP generado con tus datos personales son unicamente y exclusivos para ti es decir, nadie mas debe tener acceso a el',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text(
              'Como subo una receta',
              style: TextStyle(fontSize: 20.0),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'para subir una receta es necesaria tenerla en formato pdf guardad en tu dispositivo',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text(
              'Como restablesco mi contraseña',
              style: TextStyle(fontSize: 20.0),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Para restablecerla, simplemente dirigete a la seccion perfil y modificar datos',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text(
              'Nuestras redes',
              style: TextStyle(fontSize: 20.0),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'siguenos en:'
                  'Facebook: HistoMep'
                  'Instagram: HISTOMEP'
                  'Twitter: HistoMepp',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
