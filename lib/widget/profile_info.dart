import 'package:flutter/material.dart';

// Props widget

class ProfileInfo extends StatelessWidget {
  final String name;
  final String age;
  final List<String> language;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.age,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          "Name: $name, \nAge: $age, \nLanguage: ${language.join(", ")}",
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}



//Static widget

// class ProfileInfo extends StatelessWidget {
//   const ProfileInfo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Padding(padding: EdgeInsets.2all(16.0),
//       child: Center(
//         child: Text(
//           "Name: Matheus Fabio, \nAge:26, \nPL: Dart and Js",
//           textAlign: TextAlign.start,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//         ),
//       ),
//     );
//   }
// }