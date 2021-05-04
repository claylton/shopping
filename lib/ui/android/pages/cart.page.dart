import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/cart.bloc.dart';
import 'package:shopping/models/cart-item.model.dart';
import 'package:shopping/ui/shared/widgets/cart/cart-item.widget.dart';
import 'package:shopping/ui/shared/widgets/shared/loader.widget.dart';

// ignore: must_be_immutable
class CartPage extends StatelessWidget {
  CartBloc bloc;
  final price = new NumberFormat("#,##0.00", "pt_BR");
  var items = <CartItemModel>[];
  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<CartBloc>(context);
    items = bloc.cart;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Loader(
                object: bloc.cart,
                callback: listCart,
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R\$ ${price.format(bloc.total)}",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 100,
                      child: Text(
                        "Checkout",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  listCart() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index].id),
            child: CartItem(
              item: items[index],
            ),
            onDismissed: (direction) {
              bloc.removeItem(items[index]);
            },
            background: Container(
              color: Colors.red.withOpacity(0.1),
            ),
          );
        });
  }
}
