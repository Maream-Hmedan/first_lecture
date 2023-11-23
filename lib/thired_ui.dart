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
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "First Screen..",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: const [
            Icon(Icons.access_alarm_outlined, color: Colors.red),
            SizedBox(
              width: 6,
            ),
          ],
          leading: const Row(
            children: [
              SizedBox(
                width: 3,
              ),
              Icon(Icons.menu),
              SizedBox(
                width: 3,
              ),
             Icon(Icons.save_sharp)
            ],
          ),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_outlined,
                  size: 40,
                  color: Colors.lightBlue,
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.ac_unit_outlined,
                  size: 40,
                  color: Colors.lightBlue,
                ),
                Icon(
                  Icons.accessibility_new_outlined,
                  size: 40,
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.ac_unit_outlined,
                  size: 40,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.accessibility_new_outlined,
                  size: 40,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.ac_unit_outlined,
                  size: 40,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.accessibility_new_outlined,
                  size: 40,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
