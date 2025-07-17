
import 'package:flutter/material.dart';
import 'package:flutter_til/widget/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final String username = "Matheus Fabio R Silva";
  final String userAge = "26";
  final List<String> userPL = ["Dart", "Js", "Kotlin"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, "/details",
            arguments: {"name": username, "age": userAge,
            },
          );
        }, child: const Text("Ir para detalhes")),
      ),
    );
  }
}
