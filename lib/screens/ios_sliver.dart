import 'package:flutter/cupertino.dart';

class IosSliverPage extends StatefulWidget {
  const IosSliverPage({super.key});

  @override
  State<IosSliverPage> createState() => _IosSliverPageState();
}

class _IosSliverPageState extends State<IosSliverPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Ios App"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const CupertinoListTile(
              title: Text("CupertinoListTile"),
            ),
            CupertinoListSection(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("CupertinoListSection"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
