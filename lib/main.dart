import 'package:flutter/material.dart';
import 'package:myapp/screen_one.dart';
import 'package:myapp/screen_two.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 99, 175),
        centerTitle: true,
        title: Text(
          "Home Page",
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
            ElevatedButton(
              child: Text(
                "Go to screen #1",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 238, 255, 81),
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ScreenOne();
                  }));
                });
              },
            ),
            ElevatedButton(
              child: Text(
                "Go to screen #2",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 238, 255, 81),
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ScreenTwo();
                    }),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
