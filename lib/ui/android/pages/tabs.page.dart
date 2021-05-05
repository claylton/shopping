import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/cart.bloc.dart';
import 'package:shopping/ui/android/pages/cart.page.dart';
import 'package:shopping/ui/android/pages/home.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          Container(color: Colors.blue),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      //TODO Exibir itens por quantidade de produtos no carrinho
                      "${bloc.cart.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
