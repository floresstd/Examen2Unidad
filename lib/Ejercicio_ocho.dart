import 'package:flutter/material.dart';

class EjercicioOcho extends StatefulWidget {
  const EjercicioOcho({Key? key}) : super(key: key);

  @override
  State<EjercicioOcho> createState() => _EjercicioOchoState();
}

class _EjercicioOchoState extends State<EjercicioOcho> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Ocho',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffde2899),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotate Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
