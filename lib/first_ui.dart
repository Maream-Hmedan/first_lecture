import 'package:first_lecture/screens/screen_one.dart';
import 'package:first_lecture/screens/screen_three.dart';
import 'package:first_lecture/screens/screen_tow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const ScreenOne(),
      routes: {
        "/screen1": (context)=> const ScreenOne(),
        "/screen2": (context)=> const ScreenTow(),
        "/screen3": (context)=> const ScreenThree(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black,width: 1)
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.cloud_outlined),
                  Icon(Icons.cloud_outlined),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cloud_outlined),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cloud_outlined),
                  Icon(Icons.cloud_outlined),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.cloud_outlined),
                  Icon(Icons.cloud_outlined),
                  Icon(Icons.cloud_outlined),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon(Icons.cloud_outlined),
                  // Icon(Icons.cloud_outlined),
                  // Spacer(),
                  // Icon(Icons.cloud_outlined),
                  Row(
                    children: [
                      Icon(Icons.cloud_outlined),
                      Icon(Icons.cloud_outlined)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.cloud_outlined),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cloud_outlined),
                  Icon(Icons.cloud_outlined),
                  Row(
                    children: [
                      Icon(Icons.cloud_outlined),
                      Icon(Icons.cloud_outlined),
                    ],
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
