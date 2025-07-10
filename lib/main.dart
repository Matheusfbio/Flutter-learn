import 'package:flutter/material.dart';
import 'package:flutter_til/screen/info_screen.dart';
import 'package:provider/provider.dart';
import 'provider/counter_provider.dart';
import 'package:http/http.dart' as http;

void main() => runApp(
  ChangeNotifierProvider(create: (_) => CounterProvider(), child: MyApp()),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo Navegação',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  // static final List _items = [
  //   "Fundamentos e UI no Flutter",
  //   "Gerenciamento de Estado no Flutter",
  //   "Navegação e Rotas no Flutter",
  //   "Listas e Scrolls no Flutter",
  // ];
}
// static final List _docs = [
//   "https://flutter.dev",
//   "https://docs.flutter.dev",
//   "https://pub.dev",
//   "https://dart.dev",
//   "https://flutterawesome.com",
//   "https://medium.com/flutter",
//   "https://flutterbyexample.com",
//   "https://fluttermaster.com",
//   "https://flutter-examples.com",
//   "https://github.com/flutter/flutter",
//   "https://github.com/Solido/awesome-flutter",
//   "https://fluttercommunity.dev",
//   "https://www.youtube.com/c/FlutterDev",
//   "https://codelabs.developers.google.com/?cat=Flutter",
//   "https://stackoverflow.com/questions/tagged/flutter",
//   "https://flutterweekly.net",
//   "https://itnext.io/tagged/flutter",
//   "https://www.raywenderlich.com/flutter",
//   "https://resocoder.com/tag/flutter/",
//   "https://www.udemy.com/topic/flutter/",
// ];

class _HomeScreenState extends State<HomeScreen> {
  String _data = "";

  static final List<String> _items = [
    "Fundamentos e UI no Flutter",
    "Gerenciamento de Estado no Flutter",
    "Navegação e Rotas no Flutter",
    "Listas e Scrolls no Fl'utter",
  ];

  Future<void> fetchData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("Data fetched successfully : ${response.body}");
      setState(() {
        _data = response.body;
      });
    } else {
      // _data = "Failed to fetch data";
      setState(() {
        _data = "Failed to fetch data";
      });
    }
  }

  Future<void> createData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.post(
      url,
      body: {"title": "New Title", "body": "Hello word", "userId": "1"},
    );
    if (response.statusCode == 201) {
      print("Data created successfully : ${response.body}");
      setState(() {
        _data = "Data created successfully : ${response.body}";
      });
    } else {
      // _data = "Failed to fetch data";
      setState(() {
        _data = "Failed to create data";
      });
    }
    // Simulate fetching data from an API or database
    // print("Fetching data...");
  }

  Future<void> deleteData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/101");
    var response = await http.delete(url);
    if (response.statusCode == 200) {
      print("Data deleted successfully : ${response.body}");
      setState(() {
        _data = "Data deleted successfully";
      });
    } else {
      setState(() {
        _data = "Failed to delete data";
      });
    }
    // Simulate fetching data from an API or database
    // print("Fetching data...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''), centerTitle: true),
      drawer: NavigationDrawer(
        children:
            _items.map((item) {
              return ListTile(
                title: Text(item),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoScreen(title: item),
                    ),
                  );
                },
              );
            }).toList(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: fetchData, child: Text("fetch data")),
              ElevatedButton(onPressed: createData, child: Text("Create Data")),
              ElevatedButton(onPressed: deleteData, child: Text("Delete Data")),
            ],
          ),
          // Expanded cannot be used inside ListView's children directly, so use a Container instead
          SizedBox(
            height: 200,
            child: SingleChildScrollView(child: Center(child: Text(_data))),
          ),
        ],
      ),
    );
  }
}
