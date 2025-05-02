import 'dart:async';
import 'package:flutter/material.dart';

class EjercicioTres extends StatefulWidget {
  const EjercicioTres({Key? key}) : super(key: key);

  @override
  State<EjercicioTres> createState() => _EjercicioTresState();
}

class _EjercicioTresState extends State<EjercicioTres>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  late Widget _animatedModalBarrier;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _colorAnimation = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    ).animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handlePress() {
    setState(() {
      _isPressed = true;
    });
    _animationController.reset();
    _animationController.forward();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _isPressed = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Tres',
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
            children: [
              SizedBox(
                height: 100.0,
                width: 250.0,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                      onPressed: _handlePress,
                      child: const Text('Press'),
                    ),
                    if (_isPressed) _animatedModalBarrier,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
