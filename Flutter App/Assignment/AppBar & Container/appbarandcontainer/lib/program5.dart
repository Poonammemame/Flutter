import 'package:flutter/material.dart';

class Program5 extends StatefulWidget {
  const Program5({super.key});

  @override
  State<Program5> createState() => _Program5State();
}

class _Program5State extends State<Program5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Images"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo6VeTp8pyS3KvdwUEup75sDcxxsGq7HHqxYTkctjxonirPg48VWyVaoyYuipeELj95ho&usqp=CAU",
              width: 150,
              height: 150,
            ),
            Image.network(
              "https://external-preview.redd.it/-YWdkFQ6BljhSwhJFct5OfbPHu78GT8UpPp2wZbCywc.jpg?width=1080&crop=smart&auto=webp&s=b8e2bebe1c3e446402a30f65bd3564989632a84c",
              width: 150,
              height: 150,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStRfqCOUow5qY0Uu6iImKSn6mtntA-E6r5cGjMLGdY7UBGMvdBezkBw2aalXkgb7ungcM&usqp=CAU",
              width: 150,
              height: 150,
            )
          ],
        ));
  }
}
