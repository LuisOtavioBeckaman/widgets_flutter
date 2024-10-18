import 'package:flutter/material.dart';
import 'examples/stateless_example.dart';
import 'examples/stateful_example.dart';
import 'examples/layout_example.dart';
import 'examples/navigation_example.dart';
import 'examples/form_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplos Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplos Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatelessExample()),
                );
              },
              child: const Text('Exemplo StatelessWidget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatefulExample()),
                );
              },
              child: const Text('Exemplo StatefulWidget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutExample()),
                );
              },
              child: const Text('Exemplo de Layouts'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigationExample()),
                );
              },
              child: const Text('Exemplo de Navegação'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormExample()),
                );
              },
              child: const Text('Exemplo de Formulário'),
            ),
          ],
        ),
      ),
    );
  }
}
