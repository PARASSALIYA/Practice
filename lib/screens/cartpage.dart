import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/product.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

double price = 0;
double totalPrice = 0;

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    cart.forEach((e) {
      totalPrice += e['price'] * e['qty'];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qwerty"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
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
                          cart[index]['thumbnail'],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "${cart[index]['title']}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text("\$ ${cart[index]['price']}"),
                            Text("${cart[index]['brand'] ?? "NO BRAND"}"),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (cart[index]['qty'] > 0) {
                                      cart[index]['qty']--;
                                    }
                                    if (cart[index]['qty'] > 1) {
                                      cart.remove(cart[index]);
                                    }

                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                Text("${cart[index]['qty']}"),
                                IconButton(
                                  onPressed: () {
                                    cart[index]['qty']++;
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
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
