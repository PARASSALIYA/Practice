import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text("PageView"),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.red,
              child: const Center(
                child: Text('Page 1'),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text('Page 2'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Page 3'),
              ),
            ),
            Container(
              color: Colors.grey,
              child: const Center(
                child: Text('Page 4'),
              ),
            ),
            Container(
              color: Colors.orangeAccent,
              child: const Center(
                child: Text('Page 5'),
              ),
            ),
            Container(
              color: Colors.purple,
              child: const Center(
                child: Text('Page 6'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
