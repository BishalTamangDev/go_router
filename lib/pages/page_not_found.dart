import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          spacing: 16.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.hourglass_empty_outlined),
            Text("Page Not Found!"),
          ],
        ),
      ),
    );
  }
}
