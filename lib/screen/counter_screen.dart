import 'package:flutter/material.dart';
import 'package:flutter_til/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text('Contador Global')), // ✅ const
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: ${counter.count}', style: const TextStyle(fontSize: 24)), // ✅ só o TextStyle é const
            const SizedBox(height: 16), // ✅ const
            ElevatedButton(
              onPressed: () => context.read<CounterProvider>().increment(),
              child: const Text('Increment'), // ✅ const
            ),
          ],
        ),
      ),
    );
  }
}
