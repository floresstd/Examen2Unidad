import 'package:flutter/material.dart';
import 'package:floresrutas/pagina_uno.dart';
import 'package:floresrutas/AnimatedContainer.dart';
import 'package:floresrutas/MediaQuery.dart';
import 'package:floresrutas/AlertDialog.dart';
import 'package:floresrutas/Text.dart';
import 'package:floresrutas/RichText.dart';
import 'package:floresrutas/Timer.dart';
import 'package:floresrutas/PageView.dart';
import 'package:floresrutas/Stack.dart';
import 'package:floresrutas/TextField.dart';
import 'package:floresrutas/AnimatedIcon.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/ejercicio1': (context) => const EjercicioUno(),
        '/ejercicio2': (context) => const EjercicioDos(),
        '/ejercicio3': (context) => const EjercicioTres(),
        '/ejercicio4': (context) => const EjercicioCuatro(),
        '/ejercicio5': (context) => const EjercicioCinco(),
        '/ejercicio6': (context) => const EjercicioSeis(),
        '/ejercicio7': (context) => const EjercicioSiete(),
        '/ejercicio8': (context) => const EjercicioOcho(),
        '/ejercicio9': (context) => const EjercicioNueve(),
        '/ejercicio10': (context) => const EjercicioDiez(),
      },
    );
  }
}
