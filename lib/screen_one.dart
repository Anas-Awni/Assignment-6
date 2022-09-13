import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 6, 99, 175),
          centerTitle: true,
          title: Text(
            "Screen #1",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 238, 255, 81),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text(
                  "Hello From Screen #1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
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
    );
  }
}
