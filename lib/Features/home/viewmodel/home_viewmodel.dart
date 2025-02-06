import 'dart:developer';

import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:b_app/Features/home/services/api_services.dart';
import 'package:b_app/Features/home/services/app_database.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  late final ApiServices _apiServices;
  List<HomeModel> _homeData = [];
  bool _isLoading = true;
  bool _isOffline = false;

  List<HomeModel> get homeData => _homeData;
  bool get isLoading => _isLoading;
  bool get isOffline => _isOffline;

  HomeViewModel(AppDatabase database) {
    _apiServices = ApiServices(database);
    fetchData();
  }

  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _homeData = await _apiServices.fetchHomeData();
      _isOffline = false;
    } catch (e) {
      log('Error in HomeViewModel: $e');
      _isOffline = true;
      _homeData = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refreshData() async {
    return fetchData();
  }

  // Helper method to get sections by type
  List<HomeModel> getSectionsByType(String type) {
    return _homeData.where((item) => item.type == type).toList();
  }
}
