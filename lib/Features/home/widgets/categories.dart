// lib/widgets/categories_grid.dart
import 'package:b_app/Features/home/widgets/image.dart';
import 'package:flutter/material.dart';

class CategoriesGrid extends StatelessWidget {
  final String title;
  final List<dynamic> categories;

  const CategoriesGrid({
    super.key,
    required this.title,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Column(
              children: [
                Expanded(
                  child: CustomNetworkImage(
                    imageUrl: category.imageUrl,
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  category.title ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
