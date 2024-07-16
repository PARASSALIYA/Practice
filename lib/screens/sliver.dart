import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({super.key});

  @override
  State<SliverPage> createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'ios_sliver');
                },
                icon: const Icon(Icons.info_outline_sharp),
              ),
            ],
            title: const Text("Sliver "),
            excludeHeaderSemantics: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListItem(index: index); // Custom list item widget
              },
              childCount: 5, // Number of items in the list
            ),
          ),
          SliverGrid.builder(
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => ListItem(index: index),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final int index;

  ListItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Item : ${index + 1}',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
