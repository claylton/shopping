import 'package:flutter/material.dart';
import 'package:shopping/models/product-details.model.dart';
import 'package:shopping/repositories/product.repository.dart';
import 'package:shopping/ui/shared/widgets/shared/generic-progress-indicator.widget.dart';

class ProductPage extends StatelessWidget {
  final String tag;
  final _productRepository = new ProductRepository();

  ProductPage({@required this.tag});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProductDetailsModel>(
      future: _productRepository.getProduct(tag),
      builder: (context, snapshot) {
        ProductDetailsModel product = snapshot.data;

        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text("Aguardando");

          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(
              child: GenericProgressIndicator(),
            );

          case ConnectionState.done:
            if (snapshot.hasError) {
              return Center(
                child: Text("Não foi possível obter o produto, Pai"),
              );
            } else {
              return content(product);
            }
        }
        return null;
      },
    );
  }

  Widget content(ProductDetailsModel product) {
    return Scaffold(
      appBar: AppBar(),
      body: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.image.length,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            child: Image.network(
              product.image[index],
            ),
          );
        },
      ),
    );
  }
}
