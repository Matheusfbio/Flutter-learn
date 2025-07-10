import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final String title;
  const ListViewWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Container(
                height: 25,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(0.0),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
