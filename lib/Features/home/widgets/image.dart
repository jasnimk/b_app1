// // // import 'package:flutter/material.dart';
// // // import 'package:cached_network_image/cached_network_image.dart';

// // // class CustomNetworkImage extends StatelessWidget {
// // //   final String? imageUrl;
// // //   final BoxFit fit;
// // //   final double? width;
// // //   final double? height;

// // //   const CustomNetworkImage({
// // //     super.key,
// // //     required this.imageUrl,
// // //     this.fit = BoxFit.cover,
// // //     this.width,
// // //     this.height,
// // //   });

// // //   String _getPlaceholderImage() {
// // //     final w = width?.toInt() ?? 400;
// // //     final h = height?.toInt() ?? 400;
// // //     return 'https://picsum.photos/$w/$h?random=${DateTime.now().millisecondsSinceEpoch}';
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return CachedNetworkImage(
// // //       imageUrl:
// // //           imageUrl?.isNotEmpty == true ? imageUrl! : _getPlaceholderImage(),
// // //       fit: fit,
// // //       width: width,
// // //       height: height,
// // //       placeholder: (context, url) => const Center(
// // //         child: CircularProgressIndicator(),
// // //       ),
// // //       errorWidget: (context, url, error) => CachedNetworkImage(
// // //         imageUrl: _getPlaceholderImage(),
// // //         fit: fit,
// // //         placeholder: (context, url) => const Center(
// // //           child: CircularProgressIndicator(),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// class CustomNetworkImage extends StatelessWidget {
//   final String? imageUrl;
//   final BoxFit fit;
//   final double? width;
//   final double? height;

//   const CustomNetworkImage({
//     super.key,
//     required this.imageUrl,
//     this.fit = BoxFit.cover,
//     this.width,
//     this.height,
//   });

//   String _getPlaceholderImage() {
//     // List of reliable electronics-related placeholder images by category
//     const List<String> electronicPlaceholders = [
//       // Laptops
//       'https://unsplash.com/photos/macbook-pro-on-top-of-brown-table-1SAnrIxw5OY', // Modern laptop
//       'https://unsplash.com/photos/person-typing-on-macbook-pro-on-brown-wooden-table-during-daytime-photo-0QvTyp0gH3A', // Laptop workspace

//       // Smartphones
//       'https://unsplash.com/photos/a-white-cell-phone-sitting-on-top-of-a-pink-and-blue-background-0ej0jMwPFhQ', // Modern smartphone
//       'https://unsplash.com/photos/iphone-screen-showing-icons-on-screen-Uae7ouMw91A', // Phone with apps

//       // Smart Watches
//       'https://unsplash.com/photos/space-gray-apple-watch-with-black-sports-band-hbTKIbuMmBI', // Smart watch
//       'https://unsplash.com/photos/a-man-in-a-black-tank-top-holding-a-smart-watch-MGUhAug3dd0', // Fitness tracker

//       // Home Appliances
//       'https://unsplash.com/photos/black-top-mount-refrigerator-with-dispenser-xK8QreBEjcc', // Modern refrigerator
//       'https://unsplash.com/photos/white-ceramic-mug-on-white-ceramic-saucer-on-white-wooden-cabinet-Ot2iTXgC6fY', // Kitchen appliances

//       // Audio Devices
//       'https://unsplash.com/photos/flatlay-photography-of-wireless-headphones-PDX_a_82obo', // Headphones
//       'https://unsplash.com/photos/round-black-speaker-BMest61rcqs', // Wireless speaker
//     ];

//     // Get a random image from the list based on current timestamp
//     final randomIndex =
//         DateTime.now().millisecondsSinceEpoch % electronicPlaceholders.length;
//     return electronicPlaceholders[randomIndex];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl:
//           imageUrl?.isNotEmpty == true ? imageUrl! : _getPlaceholderImage(),
//       fit: fit,
//       width: width,
//       height: height,
//       placeholder: (context, url) => Container(
//         color: Colors.grey[200],
//         child: const Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//       errorWidget: (context, url, error) => CachedNetworkImage(
//         imageUrl: _getPlaceholderImage(),
//         fit: fit,
//         placeholder: (context, url) => Container(
//           color: Colors.grey[200],
//           child: const Center(
//             child: CircularProgressIndicator(),
//           ),
//         ),
//         errorWidget: (context, url, error) => Container(
//           color: Colors.grey[200],
//           child: const Icon(Icons.error_outline, size: 40),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:cached_network_image/cached_network_image.dart';

// // class CustomNetworkImage extends StatelessWidget {
// //   final String? imageUrl;
// //   final BoxFit fit;
// //   final double? width;
// //   final double? height;

// //   const CustomNetworkImage({
// //     super.key,
// //     required this.imageUrl,
// //     this.fit = BoxFit.cover,
// //     this.width,
// //     this.height,
// //   });

// //   String _getPlaceholderImage() {
// //     // List of reliable electronics-related placeholder images
// //     const List<String> electronicPlaceholders = [
// //       // Using stable CDN images
// //       'https://images.pexels.com/photos/163140/technology-computer-notebook-pc-163140.jpeg', // Laptop
// //       'https://images.pexels.com/photos/404280/pexels-photo-404280.jpeg', // Mobile
// //       'https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg', // Smart TV
// //       'https://images.pexels.com/photos/236915/pexels-photo-236915.jpeg', // Headphones
// //       'https://images.pexels.com/photos/1334598/pexels-photo-1334598.jpeg', // Smart Watch
// //     ];

// //     // Backup placeholder if needed
// //     const String defaultPlaceholder =
// //         'https://via.placeholder.com/400x400.png?text=Electronics+Product';

// //     try {
// //       // Get a random image from the list based on current timestamp
// //       final randomIndex =
// //           DateTime.now().millisecondsSinceEpoch % electronicPlaceholders.length;
// //       return electronicPlaceholders[randomIndex];
// //     } catch (e) {
// //       // Return default placeholder if there's any issue
// //       return defaultPlaceholder;
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return CachedNetworkImage(
// //       imageUrl:
// //           imageUrl?.isNotEmpty == true ? imageUrl! : _getPlaceholderImage(),
// //       fit: fit,
// //       width: width,
// //       height: height,
// //       placeholder: (context, url) => Container(
// //         color: Colors.grey[100],
// //         child: const Center(
// //           child: CircularProgressIndicator(),
// //         ),
// //       ),
// //       errorWidget: (context, url, error) => CachedNetworkImage(
// //         imageUrl: _getPlaceholderImage(),
// //         fit: fit,
// //         placeholder: (context, url) => Container(
// //           color: Colors.grey[100],
// //           child: const Center(
// //             child: CircularProgressIndicator(),
// //           ),
// //         ),
// //         errorWidget: (context, url, error) => Container(
// //           color: Colors.grey[100],
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: const [
// //               Icon(Icons.devices, size: 40, color: Colors.grey),
// //               SizedBox(height: 8),
// //               Text('Product Image'),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  String _getPlaceholderImage() {
    // List of reliable electronics-related placeholder images with direct URLs
    const List<String> electronicPlaceholders = [
      // Laptops
      'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=800&q=80', // Laptop
      'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=800&q=80', // Laptop workspace

      // Smartphones
      'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&q=80', // Modern phone
      'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=800&q=80', // Phone on desk

      // Watches
      'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&q=80', // Smart watch
      'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?w=800&q=80', // Apple watch

      // Audio
      'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&q=80', // Headphones
      'https://images.unsplash.com/photo-1558089687-f282ffcbc054?w=800&q=80', // Speaker

      // Electronics
      'https://images.unsplash.com/photo-1498049794561-7780e7231661?w=800&q=80', // Computer setup
      'https://images.unsplash.com/photo-1526738549149-8e07eca6c147?w=800&q=80' // RGB setup
    ];

    // Get a random image from the list based on current timestamp
    final randomIndex =
        DateTime.now().millisecondsSinceEpoch % electronicPlaceholders.length;
    return electronicPlaceholders[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          imageUrl?.isNotEmpty == true ? imageUrl! : _getPlaceholderImage(),
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, url) => Container(
        color: Colors.grey[200],
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => CachedNetworkImage(
        imageUrl: _getPlaceholderImage(),
        fit: fit,
        placeholder: (context, url) => Container(
          color: Colors.grey[200],
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.devices, size: 40, color: Colors.grey),
              SizedBox(height: 8),
              // Text('Product Image'),
            ],
          ),
        ),
      ),
    );
  }
}
