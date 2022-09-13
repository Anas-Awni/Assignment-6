import 'package:flutter/material.dart';

import 'main.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 6, 99, 175),
          centerTitle: true,
          title: Text(
            "Screen #2",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 238, 255, 81),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello From Screen #2",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: Text(
                  "Go Back To Your Home Page",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 238, 255, 81),
                  ),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Home();
                      }),
                    );
                  });
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
