import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:b_app/Features/home/services/api_services.dart';
import 'package:b_app/Features/home/services/app_database.dart';
import 'package:b_app/Features/home/services/db.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  late final ApiServices _apiServices;
  List<HomeModel> _homeData = [];
  bool _isLoading = true;

  List<HomeModel> get homeData => _homeData;
  bool get isLoading => _isLoading;

  HomeViewModel(AppDatabase database) {
    _apiServices = ApiServices(database);
    fetchData();
  }

  void fetchData() async {
    _isLoading = true;
    notifyListeners();

    _homeData = await _apiServices.fetchHomeData();

    _isLoading = false;
    notifyListeners();
  }
}
