// lib/widgets/products_section.dart
import 'package:b_app/Features/home/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsSection extends StatelessWidget {
  final String title;
  final List<dynamic> products;

  const ProductsSection({
    super.key,
    required this.title,
    required this.products,
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
        SizedBox(
          height: 320,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                imageUrl: product.productImage,
                name: product.productName,
                price: product.offerPrice,
                discount: product.discount,
              );
            },
          ),
        ),
      ],
    );
  }
}
