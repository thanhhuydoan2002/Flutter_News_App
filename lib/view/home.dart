import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: Text("Page No. $index"),
            );

      }),
    );
  }
}
