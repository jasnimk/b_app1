import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:b_app/Features/home/viewmodel/home_viewmodel.dart';
import 'package:b_app/Features/home/widgets/banner.dart';
import 'package:b_app/Features/home/widgets/categories.dart';
import 'package:b_app/Features/home/widgets/image.dart';
import 'package:b_app/Features/home/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Consumer<HomeViewModel>(
        builder: (ctx, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (viewModel.homeData.isEmpty) {
            return const Center(child: Text('Nothing to display'));
          }

          return ListView.builder(
            itemCount: viewModel.homeData.length,
            itemBuilder: (ctx, index) {
              final item = viewModel.homeData[index];
              return _buildSection(context, item);
            },
          );
        },
      ),
    );
  }

  Widget _buildSection(BuildContext context, HomeModel item) {
    switch (item.type) {
      case 'banner_slider':
        return BannerSlider(
          title: item.title,
          contents: item.getContentList(),
        );
      case 'products':
        return ProductsSection(
          title: item.title,
          products: item.getContentList(),
        );
      case 'banner_single':
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomNetworkImage(
            imageUrl: item.imageUrl,
            width: MediaQuery.of(context).size.width - 32,
            height: 200,
          ),
        );
      case 'catagories':
        return CategoriesGrid(
          title: item.title,
          categories: item.getContentList(),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
