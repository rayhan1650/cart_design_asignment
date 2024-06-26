import 'package:cart_design_asignment/item_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cart design",
      home: Home(),
    );
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Bag",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Item(
                      image: 'images/pullover.jpg',
                      itemName: 'Pullover',
                      color: 'Black',
                      size: 'L',
                      quantity: 1,
                      price: 51,
                    ),
                    Item(
                      image: 'images/tshirt.jpg',
                      itemName: 'T-Shirt',
                      color: 'Gray',
                      size: 'L',
                      quantity: 1,
                      price: 30,
                    ),
                    Item(
                      image: 'images/sport_dress.jpg',
                      itemName: 'Sport Dress',
                      color: 'Black',
                      size: 'M',
                      quantity: 1,
                      price: 43,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    const Text("Hello"),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                                'Congratulation! Yor purchase is successful.'),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 1),
                          ));
                        },
                        child: const Text('CHECK OUT'),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [Column()]),
    );
  }
}
