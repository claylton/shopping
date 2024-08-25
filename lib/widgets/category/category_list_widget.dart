import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category_item_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CategoryItemWidget(imagePath: "assets/Icon_Devices.png"),
        CategoryItemWidget(imagePath: "assets/Icon_Gadgets.png"),
        CategoryItemWidget(imagePath: "assets/Icon_Gaming.png"),
        CategoryItemWidget(imagePath: "assets/Icon_Mens_Shoe.png"),
        CategoryItemWidget(imagePath: "assets/Icon_Womens_Shoe.png"),
      ],
    );
  }
}
