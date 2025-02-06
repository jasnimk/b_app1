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
      // Try API first
      final response = await http.get(Uri.parse(baseUrl));
      log('API Response Status: ${response.statusCode}');

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        final homeModels =
            jsonData.map((item) => HomeModel.fromJson(item)).toList();

        // Cache the data
        await _saveToDatabase(homeModels);
        return homeModels;
      } else {
        log('API Error: ${response.statusCode}');
        return _loadFromDatabase();
      }
    } catch (e) {
      log('Network Error: $e');
      return _loadFromDatabase();
    }
  }

  Future<void> _saveToDatabase(List<HomeModel> data) async {
    try {
      await database.homeDao.clearHomeData(); // Clear existing data
      await database.homeDao.insertHomeData(data);
      log('Successfully cached ${data.length} items');
    } catch (e) {
      log('Error caching data: $e');
    }
  }

  Future<List<HomeModel>> _loadFromDatabase() async {
    try {
      final cachedData = await database.homeDao.getAllHomeData();
      log('Loaded ${cachedData.length} items from cache');

      // Sort data by type to maintain section order
      cachedData.sort((a, b) {
        final typeOrder = {
          'banner_slider': 0,
          'catagories': 1,
          'products': 2,
          'banner_single': 3,
        };
        return (typeOrder[a.type] ?? 999).compareTo(typeOrder[b.type] ?? 999);
      });

      return cachedData;
    } catch (e) {
      log('Error loading cached data: $e');
      return [];
    }
  }
}
