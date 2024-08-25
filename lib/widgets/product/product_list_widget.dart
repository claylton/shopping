import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product_item_widget.dart';

class ProductListWidget extends StatelessWidget {

  const ProductListWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return ListView(
    scrollDirection: Axis.horizontal,
    children: const [
      ProductItemWidget(
        title: "Nike Dry-Fit Long Sleeve",
        description: "Nike",
        image: "assets/product-10.png",
        price: 150,
      ),
      ProductItemWidget(
        title: "BeoPlay Speaker",
        description: "Bang and Olufsen",
        image: "assets/product-1.png",
        price: 755,
      ),
      ProductItemWidget(
        title: "Leather Wristwatch",
        description: "Tag Heuer",
        image: "assets/product-2.png",
        price: 450,
      ),
      ProductItemWidget(
        title: "Smart Bluetooth Speaker",
        description: "Google Inc.",
        image: "assets/product-3.png",
        price: 900,
      ),
      ProductItemWidget(
        title: "Smart Luggage",
        description: "Smart Inc.",
        image: "assets/product-4.png",
        price: 1000,
      ),
    ],
  );
  }
}