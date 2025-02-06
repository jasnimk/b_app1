// // // lib/widgets/product_card.dart
// // import 'package:b_app/Features/home/widgets/image.dart';
// // import 'package:flutter/material.dart';

// // class ProductCard extends StatelessWidget {
// //   final String? imageUrl;
// //   final String? name;
// //   final String? price;
// //   final String? discount;

// //   const ProductCard({
// //     super.key,
// //     this.imageUrl,
// //     this.name,
// //     this.price,
// //     this.discount,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //       width: 200,
// //       child: Card(
// //         margin: const EdgeInsets.all(8.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             AspectRatio(
// //               aspectRatio: 1,
// //               child: CustomNetworkImage(
// //                 imageUrl: imageUrl,
// //                 width: 200,
// //                 height: 200,
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     name ?? '',
// //                     maxLines: 2,
// //                     overflow: TextOverflow.ellipsis,
// //                     style: Theme.of(context).textTheme.titleSmall,
// //                   ),
// //                   const SizedBox(height: 4),
// //                   Row(
// //                     children: [
// //                       Text(
// //                         price ?? '',
// //                         style: Theme.of(context).textTheme.titleMedium,
// //                       ),
// //                       const SizedBox(width: 8),
// //                       Text(
// //                         discount ?? '',
// //                         style: Theme.of(context).textTheme.bodySmall?.copyWith(
// //                               color: Colors.green,
// //                             ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:b_app/Features/home/widgets/image.dart';

// class ProductCard extends StatelessWidget {
//   final String? imageUrl;
//   final String? name;
//   final String? actualPrice;
//   final String? offerPrice;
//   final String? discount;
//   final double? rating;

//   const ProductCard({
//     super.key,
//     this.imageUrl,
//     this.name,
//     this.actualPrice,
//     this.offerPrice,
//     this.discount,
//     this.rating,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final bool hasDiscount = discount != null && discount!.isNotEmpty;
//     final bool showOfferPrice = offerPrice != null && offerPrice != actualPrice;

//     return SizedBox(
//       width: 200,
//       child: Card(
//         elevation: 2,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 AspectRatio(
//                   aspectRatio: 1,
//                   child: CustomNetworkImage(
//                     imageUrl: imageUrl,
//                     width: 200,
//                     height: 200,
//                   ),
//                 ),
//                 if (hasDiscount)
//                   Positioned(
//                     top: 8,
//                     left: 8,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.deepOrange,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Text(
//                         discount!,
//                         style: const styling(
//                           color: Colors.white,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name ?? '',
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: const styling(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   if (rating != null)
//                     Row(
//                       children: List.generate(5, (index) {
//                         return Icon(
//                           index < (rating ?? 0).floor()
//                               ? Icons.star
//                               : Icons.star_border,
//                           color: Colors.amber,
//                           size: 16,
//                         );
//                       }),
//                     ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Text(
//                         offerPrice ?? actualPrice ?? '',
//                         style: const styling(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       if (showOfferPrice) ...[
//                         const SizedBox(width: 8),
//                         Text(
//                           actualPrice ?? '',
//                           style: styling(
//                             fontSize: 14,
//                             color: Colors.grey[600],
//                             decoration: TextDecoration.lineThrough,
//                           ),
//                         ),
//                       ],
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:b_app/common_widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:b_app/Features/home/widgets/image.dart';

class ProductCard extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? actualPrice;
  final String? offerPrice;
  final String? discount;
  final double? rating;

  const ProductCard({
    super.key,
    this.imageUrl,
    this.name,
    this.actualPrice,
    this.offerPrice,
    this.discount,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasDiscount = discount != null && discount!.isNotEmpty;

    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CustomNetworkImage(
                    imageUrl: imageUrl,
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
              if (hasDiscount)
                Positioned(
                  left: 12,
                  bottom: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF5722),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Sale $discount!',
                      style: styling(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: styling(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2B2B2B),
                  ),
                ),
                const SizedBox(height: 8),
                if (rating != null)
                  RatingBarIndicator(
                    rating: rating ?? 0,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    unratedColor: Colors.amber.withOpacity(0.3),
                    itemCount: 5,
                    itemSize: 16.0,
                    direction: Axis.horizontal,
                  ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text('₹${offerPrice?.substring(3)}', style: styling()),
                    const SizedBox(width: 8),
                    if (actualPrice != null && actualPrice != offerPrice)
                      Text(
                        '₹${actualPrice!.substring(3)}',
                        style: styling(
                          fontSize: 14,
                          color: Colors.grey[600],
                          decoration: TextDecoration.lineThrough,

                          //decorationColor: Colors.grey[600],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
