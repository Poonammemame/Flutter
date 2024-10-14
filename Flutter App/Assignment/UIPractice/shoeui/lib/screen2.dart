import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My cart",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 5, 46, 226)),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 214, 203, 203),
                  borderRadius: BorderRadius.circular(5)),
              height: 120,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          18), // Adjust for more or less rounding
                      child: Image.asset(
                        "assets/shoe.jpeg",
                        width: 90,
                        height: 100,
                        fit: BoxFit
                            .cover, // Ensures the image fits properly inside the rounded container
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nike Shoes",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text("""With iconic style and legendary 
comfort,on repeat"""),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "\$570.00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 40),
                          Row(
                            children: [
                              GestureDetector(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  if (quantity > 0) {
                                    quantity--;
                                    setState(() {});
                                  }
                                },
                              ),
                              SizedBox(width: 6),
                              Container(
                                alignment: Alignment.center,
                                height: 31,
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 59, 10, 150)),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text(
                                  "$quantity",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(width: 6),
                              GestureDetector(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  quantity++;
                                  setState(() {});
                                },
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 214, 203, 203),
                  borderRadius: BorderRadius.circular(5)),
              height: 120,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          18), // Adjust for more or less rounding
                      child: Image.asset(
                        "assets/shoe.jpeg",
                        width: 90,
                        height: 100,
                        fit: BoxFit
                            .cover, // Ensures the image fits properly inside the rounded container
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nike Shoes",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text("""With iconic style and legendary 
comfort,on repeat"""),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "\$570.00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 40),
                          Row(
                            children: [
                              GestureDetector(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  if (quantity > 0) {
                                    quantity--;
                                    setState(() {});
                                  }
                                },
                              ),
                              SizedBox(width: 6),
                              Container(
                                alignment: Alignment.center,
                                height: 31,
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 59, 10, 150)),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text(
                                  "$quantity",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(width: 6),
                              GestureDetector(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  quantity++;
                                  setState(() {});
                                },
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                const Text(
                  "Subtotal:",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: SizedBox(
                    width: 150,
                  ),
                ),
                const Text(
                  "\$800.00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                const Text(
                  "Delivery Fee:",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: SizedBox(
                    width: 140,
                  ),
                ),
                const Text(
                  "\$5.00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                const Text(
                  "Discount:",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: SizedBox(
                    width: 180,
                  ),
                ),
                const Text(
                  "40%",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 45,
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 5, 46, 226))),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Checkout ", // Regular text
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "₹480.00", // Bold text
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Making this text bold
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
