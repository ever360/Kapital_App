import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kapital App v1.1',
      theme: ThemeData(
        brightness: Brightness.dark, // Activa tema oscuro
        scaffoldBackgroundColor: Colors.black, // Fondo negro
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.green), // Texto verde
          headlineMedium: TextStyle(
            color: Color.fromARGB(255, 3, 15, 242),
            fontSize: 32,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Kapital App v1.1'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title, style: const TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Te cuenta cuántas veces has presionado el botón: esta es otra prueba de ever para ve como guarda y depura'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add, color: Color.fromARGB(255, 27, 2, 250)),
      ),
    );
  }
}
