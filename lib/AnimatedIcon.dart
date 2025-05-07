import 'package:flutter/material.dart';

class EjercicioDiez extends StatefulWidget {
  const EjercicioDiez({Key? key}) : super(key: key);

  @override
  State<EjercicioDiez> createState() => _EjercicioDiezState();
}

class _EjercicioDiezState extends State<EjercicioDiez>
    with TickerProviderStateMixin {
  double _currentValue = 0;

  late AnimationController _controller;
  late Animation<double> _sliderAnimation;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController for slider animation
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _sliderAnimation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSliderChanged(double value) {
    setState(() {
      _currentValue = value;
    });
    _controller.forward(
        from: 0); // Trigger the animation whenever the slider changes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('Ejercicio Diez'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the current slider value
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Text(
                  _currentValue.toStringAsFixed(2),
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // Slider widget with animation
            Slider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 4,
              label: _currentValue.toStringAsFixed(2),
              activeColor: Colors.yellow,
              inactiveColor: Colors.red,
              thumbColor: Colors.green,
              onChanged: _onSliderChanged,
            ),
          ],
        ),
      ),
    );
  }
}
