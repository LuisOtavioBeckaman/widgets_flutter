import 'package:flutter/material.dart';

class StatelessExample extends StatelessWidget {
  const StatelessExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessWidget Exemplo')),
      body: const Center(
        child: Text('Este é um StatelessWidget que não muda'),
      ),
    );
  }
}
