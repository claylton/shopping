import 'package:flutter/material.dart';
import 'package:shopping/models/cart-item.model.dart';

class CartBloc extends ChangeNotifier {
  var cart = <CartItemModel>[];
  double total = 0;

  getCard() {
    return cart;
  }

  add(CartItemModel item) {
    cart.add(item);
    calculateTotal();
  }

  remove(CartItemModel item) {
    cart.removeWhere((element) => element.id == item.id);
    calculateTotal();
  }

  itemInCart(CartItemModel item) {
    var result = false;
    cart.forEach((element) {
      if (item.id == element.id) result = true;
    });
    return result;
  }

  incrementQtdItem(CartItemModel item) {
    if (item.quantity <= 10) {
      item.quantity++;
      calculateTotal();
    }
  }

  decrementQtdItem(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity--;
      calculateTotal();
    }
  }

  calculateTotal() {
    total = 0;
    cart.forEach((element) {
      total += (element.price * element.quantity);
    });
    notifyListeners();
  }
}
