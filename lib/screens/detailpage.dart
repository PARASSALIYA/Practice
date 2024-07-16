import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/product.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("${data['title']}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(
                    data['images'].length,
                    (index) => Container(
                      height: 350,
                      width: 350,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            data['images'][index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${data['title']}",
            ),
            Text(
              "${data['price']}",
            ),
            Text(
              "${data['dimensions']}",
            ),
            Text(
              "${data['rating']}",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          data['qty'] = 1;
          (cart.contains(data)) ? cart.remove(data) : cart.add(data);
          setState(() {});
        },
        label: const Text("Add to cart"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
