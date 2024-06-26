// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:calculator/buttons.dart';
import 'package:calculator/calculatebutton.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Consumer<CalculatorProvider>(builder: (context, provider, _) {
          return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: TextField(
                    controller: provider.compController,
                    // textDirection: TextDirection.rtl,
                    showCursor: true,
                    cursorColor: Colors.red,
                    style: const TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    readOnly: true,
                    autofocus: false,
                  ),
                ),
                // SizedBox(
                //   height: 45,
                // ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
                            radius: 40,
                            backgroundColor: Color.fromRGBO(50, 50, 50, 1),
                            child: IconButton(
                              icon: Icon(
                                Icons.backspace_outlined,
                                size: 34,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Provider.of<CalculatorProvider>(context,
                                        listen: false)
                                    .setValue("AC");
                              },
                            ),
                          ),
                          buttons(label: "4"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          buttons(
                              label: "7",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "8",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "9",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(label: "X"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          buttons(
                              label: "4",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "5",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "6",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(label: "-"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          buttons(
                              label: "1",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "2",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "3",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(label: "+"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          buttons(
                              label: "00",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: "0",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          buttons(
                              label: ".",
                              bgColor: Color.fromRGBO(26, 26, 26, 1)),
                          // buttons(
                          //     label: "=", bgColor: Color.fromRGBO(255, 102, 26, 1)),
                          CalculateButton(
                            label: "=",
                            bgColor: Color.fromRGBO(255, 102, 26, 1),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
