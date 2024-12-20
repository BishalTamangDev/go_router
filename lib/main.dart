import 'package:flutter/material.dart';
import 'package:go_router_git/routes/routes.dart';

void main() {
  runApp(RouterApp());
}

class RouterApp extends StatelessWidget {
  const RouterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: false,
      ),
    );
  }
}
