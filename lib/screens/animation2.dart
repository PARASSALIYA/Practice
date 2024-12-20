import 'package:flutter/material.dart';

class Animation2Page extends StatefulWidget {
  const Animation2Page({super.key});

  @override
  State<Animation2Page> createState() => _Animation2PageState();
}

class _Animation2PageState extends State<Animation2Page>
    with SingleTickerProviderStateMixin {
  Tween<Alignment>? tween1;
  Tween<Alignment>? tween2;
  Tween<Alignment>? tween3;
  Tween<Alignment>? tween4;
  AnimationController? controller;
  Animation? tweenSequence;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tween1 = AlignmentTween(begin: Alignment.topLeft, end: Alignment.topRight);
    tween2 =
        AlignmentTween(begin: Alignment.topRight, end: Alignment.bottomLeft);
    tween3 =
        AlignmentTween(begin: Alignment.bottomLeft, end: Alignment.bottomRight);
    tween4 =
        AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topLeft);
    tweenSequence = TweenSequence(
      [
        TweenSequenceItem(tween: tween1!, weight: 0.5),
        TweenSequenceItem(tween: tween2!, weight: 1),
        TweenSequenceItem(tween: tween3!, weight: 0.5),
        TweenSequenceItem(tween: tween4!, weight: 1),
      ],
    ).animate(controller!)
      ..addListener(
        () {
          setState(() {});
        },
      );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation2'),
        actions: [
          IconButton(
            onPressed: () {
              controller!.repeat();
              // if (controller!.isAnimating) {
              // } else {
              //   controller!.stop();
              // }
            },
            icon: const Icon(
              Icons.play_arrow,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: tweenSequence!.value,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
