import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class EscanearRecetaScreen extends StatefulWidget {
  final CameraDescription camera;

  const EscanearRecetaScreen({Key? key, required this.camera}) : super(key: key);

  @override
  _EscanearRecetaScreenState createState() => _EscanearRecetaScreenState();
}

class _EscanearRecetaScreenState extends State<EscanearRecetaScreen> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Escanear Receta'),
      ),
      body: CameraPreview(_controller),
    );
  }
}
