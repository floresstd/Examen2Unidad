import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla uno',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra
          ),
        ),
        backgroundColor: const Color(0xffff2626),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los botones verticalmente
          children: [
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio1');
              },
              child: const Text("Ejercicio uno"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio2');
              },
              child: const Text("Ejercicio dos"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio3');
              },
              child: const Text("Ejercicio tres"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio4');
              },
              child: const Text("Ejercicio cuatro"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio5');
              },
              child: const Text("Ejercicio cinco"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio6');
              },
              child: const Text("Ejercicio seis"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio7');
              },
              child: const Text("Ejercicio siete"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio8');
              },
              child: const Text("Ejercicio ocho"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio9');
              },
              child: const Text("Ejercicio nueve"),
            ),
            SizedBox(height: 1), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejercicio10');
              },
              child: const Text("Ejercicio diez"),
            ),
          ],
        ),
      ),
    );
  }
}
