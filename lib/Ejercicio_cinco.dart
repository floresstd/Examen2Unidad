import 'package:flutter/material.dart';

class EjercicioCinco extends StatefulWidget {
  const EjercicioCinco({Key? key}) : super(key: key);

  @override
  State<EjercicioCinco> createState() => _EjercicioCincoState();
}

class _EjercicioCincoState extends State<EjercicioCinco> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Cinco',
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
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: const Text('Change padding'),
                onPressed: () {
                  setState(() {
                    padValue = padValue == 0.0 ? 100.0 : 0.0;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text('Padding = $padValue'),
              const SizedBox(height: 20),
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
