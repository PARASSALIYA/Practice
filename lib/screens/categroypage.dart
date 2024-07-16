import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/product.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    String category = ModalRoute.of(context)?.settings.arguments as String;
    List filterList = product.where((e) => e['category'] == category).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: filterList.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 160,
                  margin: const EdgeInsets.only(bottom: 10),
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.network(
                          filterList[index]['thumbnail'],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "${filterList[index]['title']}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text("\$ ${filterList[index]['price']}"),
                            Text("${filterList[index]['brand'] ?? "NO BRAND"}"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
