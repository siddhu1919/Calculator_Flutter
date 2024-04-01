// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

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
            // child: Text(
            //   'I N S T A ✧ C A L C',
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 30,
            //       fontWeight: FontWeight.w500),
            // ),
          )),
          leading: IconButton(
            icon: const Icon(
              Icons.close_fullscreen_sharp,
              size: 30,
            ),
            onPressed: () {
              // Implement what happens when the resize icon is tapped
              print('Resize icon tapped');
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.science,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.api,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: TextField(
                controller: TextEditingController(),
                textDirection: TextDirection.rtl,
                showCursor: true,
                cursorColor: Colors.red,
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
            Container(
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.black,
                // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttons(label: "C"),
                      buttons(label: "%"),
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                        child: IconButton(
                          icon: Icon(
                            Icons.backspace_outlined,
                            size: 34,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      buttons(label: "4"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      buttons(label: "7"),
                      buttons(label: "8"),
                      buttons(label: "9"),
                      buttons(label: "x"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      buttons(label: "4"),
                      buttons(label: "5"),
                      buttons(label: "6"),
                      buttons(label: "-"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      buttons(label: "1"),
                      buttons(label: "2"),
                      buttons(label: "3"),
                      buttons(label: "+"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      buttons(label: "00"),
                      buttons(label: "0"),
                      buttons(label: "."),
                      buttons(
                          label: "=", bgColor: Color.fromRGBO(255, 102, 26, 1)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
