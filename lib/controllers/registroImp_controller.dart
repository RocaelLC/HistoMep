import 'package:shared_preferences/shared_preferences.dart';

class RegistroImpController {
  Future<void> saveUserInfo(String nombre, String apellidos) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nombre', nombre);
    await prefs.setString('apellido', apellidos);
  }

  Future<String> generateQRCode() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String nombre = prefs.getString('nombre') ?? '';
  String apellidos = prefs.getString('apellido') ?? ''; // Utilizar 'apellido' en lugar de 'apellidos'
  return '$nombre $apellidos';
}
  }

