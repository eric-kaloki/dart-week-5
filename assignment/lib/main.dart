import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Simple UI App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Simple UI App!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button clicked!');
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://rukminim2.flixcart.com/image/416/416/remote-control-toy/h/c/s/meratoy-com-ferr-original-imaek54yddvahqmq.jpeg?q=70&crop=false', // Replaced with a valid direct image URL
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
