import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: productList(context),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL",
                      ),
                      Text(
                        "\$4250",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.only(right: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Checkout",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return ListView(children: [
    productItem(),
    productItem(),
    productItem(),
    productItem(),
    productItem(),
    productItem(),
  ]);
}

Widget productItem() {
  return Container(
    height: 120,
    margin: const EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/product-1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Título do produto"),
              const Text(
                "\$200",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("+", textAlign: TextAlign.center),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: const Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("-", textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
