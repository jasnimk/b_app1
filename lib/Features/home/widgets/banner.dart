// lib/widgets/banner_slider.dart
import 'package:b_app/Features/home/widgets/image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final String title;
  final List<dynamic> contents;

  const BannerSlider({
    super.key,
    required this.title,
    required this.contents,
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
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 1.0,
            autoPlay: true,
          ),
          items: contents.map((content) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomNetworkImage(
                    imageUrl: content.imageUrl,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
