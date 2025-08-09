import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/zikirmatik.png", width: 300),
                Positioned(top: 34, right: 75, child: countText()),
                Positioned(bottom: 38, child: addOne()),
                Positioned(right: 76, bottom: 114, child: reset()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector addOne() {
    return GestureDetector(
      onTap: () {
        print("+1 tiklandi");
        _incrementCounter();
      },
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text countText() {
    return Text(
      _counter.toString(),
      style: TextStyle(
        fontFamily: "digital",
        fontSize: 63,
        color: Colors.white,
      ),
    );
  }

  GestureDetector reset() {
    return GestureDetector(
      onTap: () {
        print("reset tiklandi");
        _resetCounter();
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
