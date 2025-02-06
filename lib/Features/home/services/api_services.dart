import 'dart:convert';
import 'dart:developer';
import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:b_app/Features/home/services/app_database.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl =
      "https://64bfc2a60d8e251fd111630f.mockapi.io/api/Todo";
  final AppDatabase database;
  ApiServices(this.database);

  Future<List<HomeModel>> fetchHomeData() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      log(response.body);
      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        return jsonData
            .map((item) => HomeModel(
                  type: item['type'],
                  title: item['title'],
                  id: item['id'],
                  imageUrl: item['imageUrl'],
                  contents:
                      jsonEncode(item['contents']), // Convert to JSON string
                ))
            .toList();
      } else {
        throw Exception('Error occurred: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }
}
