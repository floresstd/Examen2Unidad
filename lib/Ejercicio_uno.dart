import 'package:flutter/material.dart';

class EjercicioUno extends StatefulWidget {
  const EjercicioUno({Key? key}) : super(key: key);

  @override
  State<EjercicioUno> createState() => _EjercicioUnoState();
}

class _EjercicioUnoState extends State<EjercicioUno>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Uno',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffde2899),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isPlay ? _controller.reverse() : _controller.forward();
                  _isPlay = !_isPlay;
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
