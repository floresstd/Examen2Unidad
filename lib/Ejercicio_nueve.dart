import 'package:flutter/material.dart';

class EjercicioNueve extends StatefulWidget {
  const EjercicioNueve({Key? key}) : super(key: key);

  @override
  State<EjercicioNueve> createState() => _EjercicioNueveState();
}

class _EjercicioNueveState extends State<EjercicioNueve> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Nueve',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffde2899),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
