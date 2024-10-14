import 'package:flutter/material.dart';

class ShoeUI extends StatefulWidget {
  const ShoeUI({super.key});

  @override
  State<ShoeUI> createState() => _ShoeUIState();
}

class _ShoeUIState extends State<ShoeUI> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shoes",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 5, 46, 226)),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.shopping_cart_sharp,
              color: Color.fromARGB(255, 5, 46, 226)),
        ],
      ),
      body: Column(
        children: [
          Image.network(
            "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: const Row(
              children: [
                Text(
                  """Nike Air Force 1 "07""",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromARGB(255, 5, 46, 226)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "SHOES",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 5, 46, 226))),
                  onPressed: () {},
                  child: const Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: const Row(
              children: [
                Expanded(
                  child:
                      Text(""" with iconic style and legendary comfort,the AF-1 
was made to be worn on repeat.This iteration puts a 
fresh spin on the hoopclassic with crisp leather,era-
echoing '80s construction and reflective-design 
Swoosh logos."""),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Text(
                  "Quantity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  child: const Icon(Icons.remove),
                  onTap: () {
                    if (quantity > 0) {
                      quantity--;
                    }
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Text(
                    "$quantity",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: Icon(Icons.add),
                  onTap: () {
                    quantity++;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 27,
          ),
          SizedBox(
            height: 45,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 5, 46, 226),
                ),
              ),
              child: const Text(
                "PURCHASE",
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
