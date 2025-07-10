import 'package:flutter/material.dart';
import 'package:flutter_til/screen/counter_screen.dart';
import 'package:flutter_til/screen/widgets_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CounterScreen()),
                  );
                },
                child: const Text('Ir para o Contador, exemplo de Provider'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const WidgetsScreen()),
                  );
                },
                child: const Text('Principais widgets do flutter'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Volta para Home
                },
                child: const Text('Voltar para a Home'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
