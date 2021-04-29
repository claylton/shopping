import 'package:dio/dio.dart';
import 'package:shopping/models/category.model.dart';
import 'package:shopping/settings.dart';

class CategoryRepository {
  Future<List<CategoryModel>> getListItem(args) async {
    var url = "${Settings.apiUrl}v1/caregories";
    Response response = await Dio().get(url);
    return (response.data as List)
    .map((e) => CategoryModel.fromJson(e))
    .toList();
  }
}