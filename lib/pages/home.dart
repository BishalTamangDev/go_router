import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home),
            Text("Home"),
          ],
        ),
      ),
    );
  }
}
