import 'package:dio/dio.dart';
import 'package:shopping_7186/models/category-list-item.model.dart';
import 'package:shopping_7186/settings.dart';

class CategoryRepository {
  Future<List<CategoryListItemModel>> getAll() async {
    var url = "${Settings.apiUrl}v1/categories";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((course) => CategoryListItemModel.fromJson(course))
        .toList();
  }
}
