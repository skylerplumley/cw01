import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
  bool firstimage = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void toggle() {
    //String firstone =
    //'https://raw.githubusercontent.com/skylerplumley/cw01/GSUPanther.svg.png';
    //String secondimage = 'https://raw.githubusercontent.com/skylerplumley/cw01/Otherpanther.png';
    setState(() {
      firstimage = !firstimage;
    });
  }

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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset(
              firstimage
                  ? '/Users/skylerplumley/cw1/web/icons/GSUPanther.svg.png'
                  : '/Users/skylerplumley/cw1/web/icons/Otherpanther.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggle,
              child: Text('Toggle Image'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
