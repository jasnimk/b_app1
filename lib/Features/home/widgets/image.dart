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
