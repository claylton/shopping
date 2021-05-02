import 'package:flutter/widgets.dart';
import 'package:shopping/models/category-list-item.model.dart';
import 'package:shopping/models/puduct-list-item.model.dart';
import 'package:shopping/repositories/category.repository.dart';
import 'package:shopping/repositories/product.repository.dart';

class HomeBloc extends ChangeNotifier {
  final categoryRepository = new CategoryRepository();
  final productRepository = new ProductRepository();

  List<ProductListItemModel> products;
  List<CategoryListItemModel> categories;
  String selectCategory = 'todos';

  HomeBloc() {
    getCategories();
    getProducts();
  }

  getCategories() {
    categoryRepository.getAll().then((data) {
      this.categories = data;
    });
  }

  getProducts() {
    productRepository.getAll().then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  getProductsByCategory() {
    productRepository.getByCategory(selectCategory).then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  changeCategory(String tag) {
    if (this.selectCategory == tag)
      this.selectCategory = 'todos';
    else
      this.selectCategory = tag;

    this.products = null;
    getProductsByCategory();
    notifyListeners();
  }
}
