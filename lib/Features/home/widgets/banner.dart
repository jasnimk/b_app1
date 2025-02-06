// // lib/widgets/banner_slider.dart
// import 'package:b_app/Features/home/widgets/image.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class BannerSlider extends StatelessWidget {
//   final String? title;
//   final List<dynamic> contents;

//   const BannerSlider({
//     super.key,
//     this.title,
//     required this.contents,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             height: 180.0,
//             viewportFraction: 1.0,
//             autoPlay: false,

//           ),
//           items: contents.map((content) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                   width: MediaQuery.of(context).size.width,
//                   margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                   child: CustomNetworkImage(
//                     imageUrl: content.imageUrl,
//                     width: MediaQuery.of(context).size.width,
//                     //height: 200,
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }
import 'package:b_app/Features/home/widgets/image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class BannerSlider extends StatefulWidget {
  final String? title;
  final List<dynamic> contents;

  const BannerSlider({
    super.key,
    this.title,
    required this.contents,
  });

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 160.0,
                viewportFraction: 1.0,
                autoPlay: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: widget.contents.map((content) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: CustomNetworkImage(
                        imageUrl: content.imageUrl,
                        width: MediaQuery.of(context).size.width,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: DotsIndicator(
                dotsCount: widget.contents.length,
                position: _current,
                decorator: DotsDecorator(
                  color: Colors.grey, // Inactive dot color
                  activeColor: Colors.white, // Active dot color
                  size: const Size.square(8.0),
                  activeSize: const Size.square(8.0),
                  spacing: const EdgeInsets.all(4),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
