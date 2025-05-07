import 'package:flutter/material.dart';

class EjercicioSiete extends StatefulWidget {
  const EjercicioSiete({Key? key}) : super(key: key);

  @override
  State<EjercicioSiete> createState() => _EjercicioSieteState();
}

class _EjercicioSieteState extends State<EjercicioSiete>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  bool _isExpanded = false;

  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<Alignment> _alignmentAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _sizeAnimation = Tween<double>(begin: 100.0, end: 300.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _colorAnimation = ColorTween(begin: Colors.blue[200], end: Colors.blue[600])
        .animate(_controller);

    _alignmentAnimation = AlignmentTween(
      begin: const Alignment(0, 0),
      end: const Alignment(1, 1),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    setState(() {
      _isExpanded ? _controller.reverse() : _controller.forward();
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio Siete"),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: Stack(
              alignment: _alignmentAnimation.value,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: _toggleAnimation,
                    child: Container(
                      height: _sizeAnimation.value,
                      width: _sizeAnimation.value,
                      color: _colorAnimation.value,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
