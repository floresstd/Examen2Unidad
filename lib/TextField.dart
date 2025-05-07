import 'package:flutter/material.dart';

class EjercicioNueve extends StatefulWidget {
  const EjercicioNueve({Key? key}) : super(key: key);

  @override
  State<EjercicioNueve> createState() => _EjercicioNueveState();
}

class _EjercicioNueveState extends State<EjercicioNueve>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isIconOpened = false;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    // Dispose of the controller when not in use
    _animationController.dispose();
    super.dispose();
  }

  // Toggle the icon state
  void _toggleIcon() {
    setState(() {
      if (_isIconOpened) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
      _isIconOpened = !_isIconOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("Ejercicio Nueve"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleIcon,
          child: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _animationController,
            size: 150,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
