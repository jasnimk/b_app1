import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final double height;

  const CustomSearchAppBar({super.key, this.height = 80.0});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Container(
        color: const Color.fromARGB(255, 103, 143, 34),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.black38),
                onPressed: () {},
              ),
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Stack(
                  children: [
                    const Icon(Icons.notifications, color: Colors.white),
                    // Positioned(
                    //   right: 0,
                    //   top: 0,
                    //   child: Container(
                    //     padding: const EdgeInsets.all(3),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.red,
                    //       shape: BoxShape.circle,
                    //     ),
                    //     child: const Icon(Icons.circle,
                    //         size: 5, color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
