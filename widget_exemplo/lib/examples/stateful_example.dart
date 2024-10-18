import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget Exemplo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você clicou $contador vezes'),
            ElevatedButton(
              onPressed: incrementar,
              child: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
