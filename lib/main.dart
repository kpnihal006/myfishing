import 'package:flutter/material.dart';
import 'package:myfishing/screens/firstscreen.dart';
import 'package:myfishing/screens/secondscreen.dart';
import 'package:myfishing/global/bottom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
      '/first': (context) => const FirstScreen(),
      '/second': (context) => const SecondScreen(),
    },
      title: 'MyFishing App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Fishing App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("testing"),
            IconButton(onPressed: () { Navigator.pushNamed(context, '/first'); }, icon: const Icon(Icons.one_k)),
            IconButton(onPressed: () {Navigator.pushNamed(context, '/second'); }, icon: const Icon(Icons.on_device_training))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},tooltip: 'create',child: const Icon(Icons.add)),   
    );
  }
}

