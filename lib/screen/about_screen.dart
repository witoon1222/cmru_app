import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เกี่ยวกับเรา'),
      ),
      body: Center(child: Text("เกี่ยวกับเรา")),
    );
  }
}
