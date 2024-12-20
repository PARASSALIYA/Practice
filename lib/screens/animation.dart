import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  double topPosition = 500.0;
  double leftPosition = 500.0;
  final Random random = Random();

  bool isBig = true;
  void ball() {
    setState(() {
      topPosition = random.nextDouble() * 300;
      leftPosition = random.nextDouble() * 300;
    });
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    ball();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text("Home Page"),
        actions: [
          ElevatedButton(
            onPressed: () {
              if (controller.isAnimating) {
                setState(() {
                  controller.forward();
                });
              }
            },
            child: const Text(
              "Press",
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: AnimatedAlign(
                duration: const Duration(seconds: 5),
                alignment: isBig ? Alignment.topLeft : Alignment.bottomRight,
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: (pi * 2) * controller.value,
                      child: child,
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/animation');
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 2),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: isBig ? Colors.white : Colors.red,
                        borderRadius: isBig
                            ? BorderRadius.circular(20)
                            : BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: ball,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    top: topPosition,
                    left: leftPosition,
                  ),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
