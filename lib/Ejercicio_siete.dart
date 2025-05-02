import 'package:flutter/material.dart';

class EjercicioSiete extends StatefulWidget {
  const EjercicioSiete({Key? key}) : super(key: key);

  @override
  State<EjercicioSiete> createState() => _EjercicioSieteState();
}

class _EjercicioSieteState extends State<EjercicioSiete> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Siete',
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
          child: SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  width: selected ? 200.0 : 50.0,
                  height: selected ? 50.0 : 200.0,
                  top: selected ? 50.0 : 150.0,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
