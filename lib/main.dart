import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
double height = 160;
  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Colors.indigo,
        title: Text("calcular IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text("Altura:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  // height.toInt().toString(),
                  height.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "cm",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Slider(
              value: height,
              min: 120,
              max: 250,
              onChanged: (double value) {
                height = value;
                setState(() {});
              },
            ),
            const Text("Peso:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  // height.toInt().toString(),
                  height.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "kg",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Slider(
              value: height,
              min: 120,
              max: 250,
              onChanged: (double value) {
                height = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}