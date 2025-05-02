import 'package:flutter/material.dart';

class EjercicioDiez extends StatefulWidget {
  const EjercicioDiez({Key? key}) : super(key: key);

  @override
  State<EjercicioDiez> createState() => _EjercicioDiezState();
}

class _EjercicioDiezState extends State<EjercicioDiez> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Diez',
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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
