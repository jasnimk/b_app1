// // home_model.dart
// import 'dart:convert';
// import 'package:floor/floor.dart';

// @entity
// class HomeModel {
//   @primaryKey
//   final String id;
//   final String type;
//   final String title;
//   final String? imageUrl;
//   final String? contents;

//   HomeModel({
//     required this.id,
//     required this.type,
//     required this.title,
//     this.imageUrl,
//     this.contents,
//   });

//   List<Content> getContentList() {
//     if (contents == null) return [];
//     try {
//       final List<dynamic> decoded = jsonDecode(contents!);
//       return decoded.map((e) => Content.fromJson(e)).toList();
//     } catch (e) {
//       print('Error parsing contents: $e');
//       return [];
//     }
//   }

//   factory HomeModel.fromJson(Map<String, dynamic> json) {
//     return HomeModel(
//       id: json['id'].toString(),
//       type: json['type'] ?? '',
//       title: json['title'] ?? '',
//       imageUrl: json['image_url'], // Changed from imageUrl to image_url
//       contents: json['contents'] != null ? jsonEncode(json['contents']) : null,
//     );
//   }
// }

// class Content {
//   final String? title;
//   final String? imageUrl;
//   final String? sku;
//   final String? productName;
//   final String? productImage;
//   final int? productRating;
//   final String? actualPrice;
//   final String? offerPrice;
//   final String? discount;

//   Content({
//     this.title,
//     this.imageUrl,
//     this.sku,
//     this.productName,
//     this.productImage,
//     this.productRating,
//     this.actualPrice,
//     this.offerPrice,
//     this.discount,
//   });

//   factory Content.fromJson(Map<String, dynamic> json) {
//     return Content(
//       title: json['title'],
//       imageUrl: json['image_url'], // Changed from imageUrl to image_url
//       sku: json['sku'],
//       productName:
//           json['product_name'], // Changed from productName to product_name
//       productImage:
//           json['product_image'], // Changed from productImage to product_image
//       productRating: json[
//           'product_rating'], // Changed from productRating to product_rating
//       actualPrice:
//           json['actual_price'], // Changed from actualPrice to actual_price
//       offerPrice: json['offer_price'], // Changed from offerPrice to offer_price
//       discount: json['discount'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'image_url': imageUrl, // Changed to match API format
//       'sku': sku,
//       'product_name': productName, // Changed to match API format
//       'product_image': productImage, // Changed to match API format
//       'product_rating': productRating, // Changed to match API format
//       'actual_price': actualPrice, // Changed to match API format
//       'offer_price': offerPrice, // Changed to match API format
//       'discount': discount,
//     };
//   }
// }
import 'dart:convert';
import 'package:floor/floor.dart';

@entity
class HomeModel {
  @primaryKey
  final String id;
  final String type;
  final String title;
  final String? imageUrl;
  final String? contents;

  HomeModel({
    required this.id,
    required this.type,
    required this.title,
    this.imageUrl,
    this.contents,
  });

  List<Content> getContentList() {
    if (contents == null) return [];
    try {
      final List<dynamic> decoded = jsonDecode(contents!);
      return decoded.map((e) => Content.fromJson(e)).toList();
    } catch (e) {
      print('Error parsing contents: $e');
      return [];
    }
  }

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      id: json['id'].toString(),
      type: json['type'] ?? '',
      title: json['title'] ?? '',
      imageUrl: json['image_url'] ?? 'https://picsum.photos/400/300',
      contents: json['contents'] != null ? jsonEncode(json['contents']) : null,
    );
  }
}

class Content {
  final String? title;
  final String? imageUrl;
  final String? sku;
  final String? productName;
  final String? productImage;
  final int? productRating;
  final String? actualPrice;
  final String? offerPrice;
  final String? discount;

  Content({
    this.title,
    this.imageUrl,
    this.sku,
    this.productName,
    this.productImage,
    this.productRating,
    this.actualPrice,
    this.offerPrice,
    this.discount,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      title: json['title'],
      imageUrl: json['image_url'] ?? 'https://picsum.photos/400/300',
      sku: json['sku'],
      productName: json['product_name'],
      productImage: json['product_image'] ?? 'https://picsum.photos/400/400',
      productRating: json['product_rating'],
      actualPrice: json['actual_price'],
      offerPrice: json['offer_price'],
      discount: json['discount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image_url': imageUrl,
      'sku': sku,
      'product_name': productName,
      'product_image': productImage,
      'product_rating': productRating,
      'actual_price': actualPrice,
      'offer_price': offerPrice,
      'discount': discount,
    };
  }
}
