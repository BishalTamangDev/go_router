import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Search({required this.searchTitle, super.key});

  final String searchTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Your searched for"),
            Text(
              "$searchTitle",
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
