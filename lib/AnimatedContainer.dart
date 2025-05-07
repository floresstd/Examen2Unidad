import 'package:flutter/material.dart';

class EjercicioUno extends StatefulWidget {
  const EjercicioUno({Key? key}) : super(key: key);

  @override
  State<EjercicioUno> createState() => _EjercicioUnoState();
}

class _EjercicioUnoState extends State<EjercicioUno>
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

    _colorAnimation = ColorTween(begin: Colors.deepPurple, end: Colors.pink)
        .animate(_controller);

    _alignmentAnimation = AlignmentTween(
      begin: const Alignment(-1, -1),
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
      backgroundColor: Colors.deepPurple[200],
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
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Align(
            alignment: _alignmentAnimation.value,
            child: GestureDetector(
              onTap: _toggleAnimation,
              child: Container(
                height: _sizeAnimation.value,
                width: _sizeAnimation.value,
                decoration: BoxDecoration(
                  color: _colorAnimation.value,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: _controller,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
