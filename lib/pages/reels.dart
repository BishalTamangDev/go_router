import 'package:flutter/material.dart';

class Reels extends StatelessWidget {
  final List<Map<String, dynamic>> reels;

  Reels({super.key, required this.reels});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reels"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 32.0
          ),
          child: ListView.builder(
            itemCount: reels.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: MediaQuery.of(context).size.width / 2,
              color: Colors.grey.shade200,
              child: Center(
                child: Column(
                  spacing: 8.0,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("${reels[index]['title']}", style: TextStyle(fontSize: 20.0),),
                    Text("${reels[index]['views']}"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
