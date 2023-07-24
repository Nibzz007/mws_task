import 'dart:convert';
import 'package:mws_task/api/api_base_url.dart';
import 'package:mws_task/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductsGetService {
  Future<ProductModel?> getProducts() async {
    try {
      final url = Uri.parse(baseUrl);
      final response = await http.get(url);
      final data = ProductModel.fromJson(jsonDecode(response.body));
      return data;
    } catch (e) {
      throw Exception('Failed to fetch product details');
    }
  }
}
