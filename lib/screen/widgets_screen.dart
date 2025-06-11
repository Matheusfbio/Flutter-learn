import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Principais Widgets')),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // 🟡 Padding
        child: Column(
          children: [
            const Text('Linha com dois containers:', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 8),

            Row( // 🟡 Row
              children: [
                Expanded( // 🟡 Expanded
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: const Center(child: Text('Container 1', style: TextStyle(color: Colors.white))),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    child: const Center(child: Text('Container 2', style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            const Text('Lista com ListView:', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 8),

            Expanded(
              child: ListView( // 🟡 ListView
                children: List.generate(500, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Container( // 🟡 Container
                      padding: const EdgeInsets.all(16),
                      color: Colors.grey[300],
                      child: Text('Item ${index + 1}'),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
