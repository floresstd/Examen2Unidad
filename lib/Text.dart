import 'package:flutter/material.dart';

class EjercicioCuatro extends StatelessWidget {
  const EjercicioCuatro({Key? key}) : super(key: key);

  final TextStyle pinkFont = const TextStyle(
    fontSize: 16,
    color: Colors.pink,
    fontStyle: FontStyle.normal,
  );

  final TextStyle greenFont = const TextStyle(
    fontSize: 30,
    color: Colors.green,
    fontStyle: FontStyle.italic,
  );

  final TextStyle paragraphFont = const TextStyle(
    fontSize: 16,
    color: Colors.deepPurple,
    height: 1.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text("Ejercicio Cuatro"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Text Widget Tutorial",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "How to customise and style texts with Flutter :D",
              style: pinkFont,
            ),
            Text(
              "Another text widget",
              style: greenFont,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "The birth centenary of Father of the Nation Bangabandhu Sheikh Mujibur Rahman is being celebrated across the country in 2020-21. Under the ICT Division of the Government of the People’s Republic of Bangladesh, different initiatives have been taken by the Bangladesh Computer Council’s iDEA project to organize the Mujib Year, most notably the “Bangabandhu Innovation Grant 2020 (BIG)” event.",
                  style: paragraphFont,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
