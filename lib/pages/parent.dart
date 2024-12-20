import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Parent extends StatelessWidget {
  const Parent({super.key});

  @override
  Widget build(BuildContext context) {
    // variables
    TextEditingController searchTitleController = TextEditingController();

    List<Map<String, dynamic>> reels = [
      {
        "id": 1,
        "title": "how to drink water",
        "views": 174585,
      },
      {
        "id": 2,
        "title": "how to breathe",
        "views": 8541,
      },
      {
        "id": 3,
        "title": "how to see",
        "views": 451,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Go Router"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            spacing: 16.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),

              Row(
                spacing: 8.0,
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: false,
                      controller: searchTitleController,
                      decoration: InputDecoration(
                        hintText: "Search here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),

                  // search
                  Container(
                    height: 54.0,
                    child: ElevatedButton(
                      onPressed: () {
                        if (searchTitleController.text.isNotEmpty) {
                          FocusScope.of(context).unfocus();

                          final String searchTitle = searchTitleController.text;
                          // GoRouter.of(context).push('home');
                          context.push('/search/$searchTitle');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              // home
              Row(
                spacing: 16.0,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // GoRouter.of(context).push('home');
                      context.push('/home');
                    },
                    child: const Text("Home"),
                  ),

                  //   reels
                  OutlinedButton(
                    onPressed: () {
                      context.push('/reels', extra: reels);
                    },
                    child: const Text("Reels"),
                  ),

                  // profile
                  OutlinedButton(
                    onPressed: () {
                      context.push('/Profile');
                    },
                    child: const Text("Profile"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
