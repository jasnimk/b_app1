import 'package:b_app/Features/home/widgets/image.dart';
import 'package:b_app/common_widgets/style.dart';
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
          height: 150, // Adjust based on your content size
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0), // Adjust spacing
                  child: Container(
                    width: 160, // Set fixed width
                    height: 145, // Set fixed height
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 169, 169, 169)),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CustomNetworkImage(
                                imageUrl: category.imageUrl,
                                width: double.infinity,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            category.title ?? '',
                            style: styling(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
