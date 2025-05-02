import 'package:flutter/material.dart';

class EjercicioSeis extends StatefulWidget {
  const EjercicioSeis({Key? key}) : super(key: key);

  @override
  State<EjercicioSeis> createState() => _EjercicioSeisState();
}

class _EjercicioSeisState extends State<EjercicioSeis> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Seis',
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
              AnimatedPhysicalModel(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                elevation: _isFlat ? 0 : 6.0,
                shape: BoxShape.rectangle,
                shadowColor: Colors.black,
                color: Colors.white,
                child: const SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: Icon(Icons.android_outlined),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Click'),
                onPressed: () {
                  setState(() {
                    _isFlat = !_isFlat;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
