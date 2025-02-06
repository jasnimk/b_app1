import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:b_app/Features/home/viewmodel/home_viewmodel.dart';
import 'package:b_app/Features/home/widgets/banner.dart';
import 'package:b_app/Features/home/widgets/categories.dart';
import 'package:b_app/Features/home/widgets/home_Appbar.dart';
import 'package:b_app/Features/home/widgets/image.dart';
import 'package:b_app/Features/home/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomSearchAppBar(),
      body: Consumer<HomeViewModel>(
        builder: (ctx, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (viewModel.homeData.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Nothing to display'),
                  if (viewModel.isOffline)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'You are offline',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ElevatedButton(
                    onPressed: viewModel.refreshData,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: viewModel.refreshData,
            child: ListView.builder(
              itemCount:
                  viewModel.homeData.length + (viewModel.isOffline ? 1 : 0),
              itemBuilder: (ctx, index) {
                if (viewModel.isOffline && index == 0) {
                  return Container(
                    color: Colors.orange.withOpacity(0.1),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Offline Mode - Showing cached data',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.orange),
                    ),
                  );
                }

                final actualIndex = viewModel.isOffline ? index - 1 : index;
                final item = viewModel.homeData[actualIndex];
                return _buildSection(context, item);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildSection(BuildContext context, HomeModel item) {
    switch (item.type) {
      case 'banner_slider':
        return BannerSlider(contents: item.getContentList());
      case 'products':
        return ProductsSection(
          title: item.title,
          products: item.getContentList(),
        );
      case 'banner_single':
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CustomNetworkImage(
              imageUrl: item.imageUrl,
              width: MediaQuery.of(context).size.width - 32,
              height: 150,
            ),
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
