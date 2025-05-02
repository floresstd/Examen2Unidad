import 'package:flutter/material.dart';

class EjercicioCuatro extends StatefulWidget {
  const EjercicioCuatro({Key? key}) : super(key: key);

  @override
  State<EjercicioCuatro> createState() => _EjercicioCuatroState();
}

class _EjercicioCuatroState extends State<EjercicioCuatro> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Cuatro',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffde2899),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Fade Logo'),
                onPressed: () {
                  setState(
                    () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
