import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layouts Exemplo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, size: 50),
              Icon(Icons.star, size: 50),
              Icon(Icons.person, size: 50),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              const Text(
                'Texto sobreposto',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
