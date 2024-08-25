import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0XFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),
            search(),
            const SizedBox(height: 30),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 90,
              child: categoryList(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 30),
                ),
                TextButton(onPressed: () {}, child: Text("See All"))
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 350,
              child: productList(),
            )
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(128),
      ),
      child: Row(
        children: [
          const Icon(Icons.search),
          Container(
            width: 300,
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: "Search...",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  )),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ));
}

Widget categoryList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
    ],
  );
}

Widget categoryItem() {
  return Container(
    height: 70,
    width: 70,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        )
      ],
      borderRadius: BorderRadius.all(Radius.circular(64)),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}

Widget productList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      productItem(),
      productItem(),
      productItem(),
      productItem(),
    ],
  );
}

Widget productItem() {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/product-1.png",
          width: 170,
          height: 170,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        const SizedBox(
          height: 60,
          child: Text(
            "Título do produto",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Marca",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "\$ 200",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}
