import 'package:flutter/material.dart';

class EjercicioOcho extends StatefulWidget {
  const EjercicioOcho({Key? key}) : super(key: key);

  @override
  State<EjercicioOcho> createState() => _EjercicioOchoState();
}

class _EjercicioOchoState extends State<EjercicioOcho>
    with TickerProviderStateMixin {
  final _textController = TextEditingController();
  String userPost = '';

  late AnimationController _controller;
  late Animation<Color?> _buttonColorAnimation;
  late Animation<double> _buttonSizeAnimation;

  @override
  void initState() {
    super.initState();

    // Animation controller for the button
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _buttonColorAnimation = ColorTween(
      begin: Colors.deepPurple[300],
      end: Colors.purpleAccent,
    ).animate(_controller);

    _buttonSizeAnimation = Tween<double>(begin: 200.0, end: 220.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    setState(() {
      if (_controller.isCompleted) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio Ocho"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displaying user input
              Expanded(
                child: Center(
                  child: Text(
                    userPost,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),

              // Text input field
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'What\'s on your mind?',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Animated button
              GestureDetector(
                onTap: () {
                  // Update the userPost and toggle animation
                  setState(() {
                    userPost = _textController.text;
                  });
                  _toggleAnimation();
                },
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return MaterialButton(
                      onPressed: null,
                      color: _buttonColorAnimation.value,
                      minWidth: _buttonSizeAnimation.value,
                      height: 50,
                      child: const Text(
                        "POST",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
