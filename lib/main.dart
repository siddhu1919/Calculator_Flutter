import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.black,
          title: const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'I N S T A ✧ C A L C',
              style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          )),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: TextField(
                controller: TextEditingController(),
                textDirection: TextDirection.rtl,
                showCursor: false,
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                readOnly: true,
                autofocus: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
