import 'package:flutter/material.dart';

class ScreenTow extends StatelessWidget {
  const ScreenTow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Tow"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen One"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/screen3");
              },
              child: const Text("Go To Screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
