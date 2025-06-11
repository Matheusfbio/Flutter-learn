import 'package:flutter/material.dart';
import 'package:flutter_til/screen/counter_screen.dart'; // 👈 Importa o CounterScreen

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informações')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CounterScreen()),
                );
              },
              child: const Text('Ir para o Contador'),
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
      ),
    );
  }
}
