import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/cart.bloc.dart';
import 'package:shopping/models/cart-item.model.dart';
import 'package:shopping/models/puduct-list-item.model.dart';

class AddToCart extends StatelessWidget {
  final ProductListItemModel item;

  AddToCart({@required this.item});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CartBloc>(context);
    var cartItem = new CartItemModel(
        id: item.id,
        image: item.image,
        price: item.price,
        quantity: 1,
        title: item.title);

    return Container(
      height: 40,
      width: 80,
      child: bloc.itemInCart(cartItem)
          ? TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                bloc.removeItem(cartItem);
                final snackBar =
                    SnackBar(content: Text("${item.title} removido amiguinho"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Icon(
                Icons.remove_shopping_cart,
                color: Colors.white,
              ),
            )
          : TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
                //textStyle: MaterialStateProperty.all(color: Colors.white),
              ),
              onPressed: () {
                bloc.addItem(cartItem);
                final snackBar = SnackBar(
                    //duration: Duration(seconds: 2),
                    content: Text(
                        "${item.title} adicionado ao carrinho, amiguinho"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
            ),
    );
  }
}
