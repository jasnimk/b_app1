// // lib/widgets/products_section.dart
// import 'package:b_app/Features/home/widgets/product_card.dart';
// import 'package:flutter/material.dart';

// class ProductsSection extends StatelessWidget {
//   final String title;
//   final List<dynamic> products;

//   const ProductsSection({
//     super.key,
//     required this.title,
//     required this.products,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             title,
//             style: Theme.of(context).textTheme.titleLarge,
//           ),
//         ),
//         SizedBox(
//           height: 320,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               final product = products[index];
//               return ProductCard(
//                 imageUrl: product.productImage,
//                 name: product.productName,
//                 price: product.offerPrice,
//                 discount: product.discount,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:b_app/Features/home/widgets/product_card.dart';
import 'package:b_app/common_widgets/style.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: styling(fontSize: 20),
              ),
              Text(
                'View All',
                style: styling(fontSize: 13),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 290,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                imageUrl: product.productImage,
                name: product.productName,
                actualPrice: product.actualPrice,
                offerPrice: product.offerPrice,
                discount: _formatDiscount(product.discount),
                rating: _parseRating(product.productRating),
              );
            },
          ),
        ),
      ],
    );
  }

  String? _formatDiscount(String? discount) {
    if (discount == null || discount.isEmpty) return null;
    // Remove any unnecessary spaces and ensure consistent format
    return discount.trim().replaceAll(' ', '');
  }

  double? _parseRating(dynamic rating) {
    if (rating == null) return null;
    if (rating is int) return rating.toDouble();
    if (rating is double) return rating;
    if (rating is String) {
      return double.tryParse(rating);
    }
    return null;
  }
}
