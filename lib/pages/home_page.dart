import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category_list_widget.dart';
import 'package:shopping/widgets/product/product_list_widget.dart';
import 'package:shopping/widgets/search_box_widget.dart';

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
            const SearchBoxWidget(),
            const SizedBox(height: 30),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 90,
              child: CategoryListWidget(),
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
            const SizedBox(
              height: 350,
              child: ProductListWidget(),
            )
          ],
        ),
      ),
    );
  }
}