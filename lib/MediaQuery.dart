import 'package:flutter/material.dart';

class EjercicioDos extends StatelessWidget {
  const EjercicioDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio Dos"),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              orientation == Orientation.portrait
                  ? Icons.stay_current_portrait
                  : Icons.stay_current_landscape,
              size: 100,
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 20),
            InfoText(label: 'Height', value: size.height.toStringAsFixed(2)),
            InfoText(label: 'Width', value: size.width.toStringAsFixed(2)),
            InfoText(
              label: 'Aspect Ratio',
              value: size.aspectRatio.toStringAsFixed(2),
            ),
            InfoText(
              label: 'Orientation',
              value: orientation.toString().split('.').last,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String label;
  final String value;

  const InfoText({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$label: ',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
