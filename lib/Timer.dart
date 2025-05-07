import 'package:flutter/material.dart';

class EjercicioSeis extends StatefulWidget {
  const EjercicioSeis({Key? key}) : super(key: key);

  @override
  State<EjercicioSeis> createState() => _EjercicioSeisState();
}

class _EjercicioSeisState extends State<EjercicioSeis>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  int timeLeft = 5;

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

  void _startCountDown() {
    if (timeLeft > 0) {
      _controller.forward();
      setState(() {
        timeLeft--;
      });
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text(
          'Ejercicio Seis',
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _startCountDown,
                  child: Container(
                    height: _sizeAnimation.value,
                    width: _sizeAnimation.value,
                    decoration: BoxDecoration(
                      color: _colorAnimation.value,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        timeLeft == 0 ? 'DONE' : timeLeft.toString(),
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: _startCountDown,
                  color: Colors.purple,
                  child: const Text(
                    'S T A R T',
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
