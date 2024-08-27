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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),
            const SearchBoxWidget(),
            const SizedBox(height: 30),
             Text(
              "Categories",
              style: Theme.of(context).textTheme.headlineMedium
            ),
            const SizedBox(
              height: 90,
              child: CategoryListWidget(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextButton(onPressed: () {}, child: const Text("See All"))
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