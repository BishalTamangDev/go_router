import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.verified_user),
            Text("Profile"),
          ],
        ),
      ),
    );
  }
}
