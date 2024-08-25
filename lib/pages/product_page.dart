import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 500,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset("assets/product-10.png"),
                ),
              )
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(0),
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  "Dry Fit Long Sleeve",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("by Nike"),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
              )
            ],
          )),
    );
  }
}
