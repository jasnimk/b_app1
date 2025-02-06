// // // import 'package:b_app/Features/common/other_screen.dart';
// // // import 'package:b_app/Features/home/view/home_screen.dart';
// // // import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // // class BaseScreen extends StatefulWidget {
// // //   @override
// // //   _BaseScreenState createState() => _BaseScreenState();
// // // }

// // // class _BaseScreenState extends State<BaseScreen> {
// // //   int _selectedIndex = 0;

// // //   final List<Widget> _screens = [
// // //     HomeScreen(),
// // //     HostScreen(
// // //       title: 'Category',
// // //     ),
// // //     HostScreen(
// // //       title: 'Cart',
// // //     ),
// // //     HostScreen(
// // //       title: 'Offers',
// // //     ),
// // //     HostScreen(
// // //       title: 'Account',
// // //     )
// // //   ];

// // //   void _onItemTapped(int index) {
// // //     setState(() {
// // //       _selectedIndex = index;
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: _screens[_selectedIndex],
// // //       bottomNavigationBar: ConvexAppBar(
// // //         style: TabStyle.react,
// // //         backgroundColor: Colors.white,
// // //         activeColor: Colors.white,
// // //         color: Colors.black,
// // //         items: [
// // //           _buildTabItem(Icons.home, 'Home', 0),
// // //           _buildTabItem(Icons.category, 'Category', 1),
// // //           _buildTabItem(Icons.shopping_cart, 'Cart', 2),
// // //           _buildTabItem(Icons.percent_rounded, 'Offers', 3),
// // //           _buildTabItem(Icons.person, 'Account', 4),
// // //         ],
// // //         initialActiveIndex: _selectedIndex,
// // //         onTap: _onItemTapped,
// // //       ),
// // //     );
// // //   }

// // //   TabItem _buildTabItem(IconData icon, String label, int index) {
// // //     return TabItem(
// // //       icon: AnimatedContainer(
// // //         duration: Duration(milliseconds: 300), // Smooth transition
// // //         width: _selectedIndex == index ? 60 : 45, // Bulging effect size change
// // //         height: _selectedIndex == index ? 60 : 45, // Bulging effect size change
// // //         decoration: BoxDecoration(
// // //           color: _selectedIndex == index ? Colors.green : Colors.transparent,
// // //           shape: BoxShape.circle,
// // //         ),
// // //         child: Icon(
// // //           icon,
// // //           size: _selectedIndex == index ? 32 : 25, // Larger icon for selected
// // //           color: _selectedIndex == index ? Colors.white : Colors.grey,
// // //         ),
// // //       ),
// // //       title: label, // Pass the label directly as a string
// // //     );
// // //   }
// // // }
// import 'package:b_app/Features/common/other_screen.dart';
// import 'package:b_app/Features/home/view/home_screen.dart';
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class BaseScreen extends StatefulWidget {
//   @override
//   _BaseScreenState createState() => _BaseScreenState();
// }

// class _BaseScreenState extends State<BaseScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     HomeScreen(),
//     HostScreen(
//       title: 'Category',
//     ),
//     HostScreen(
//       title: 'Cart',
//     ),
//     HostScreen(
//       title: 'Offers',
//     ),
//     HostScreen(
//       title: 'Account',
//     )
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: ConvexAppBar(
//         height: 50, // Adjust the height of the bottom bar here
//         style: TabStyle.react,
//         backgroundColor: Colors.white,
//         activeColor: Colors.white,
//         color: Colors.black,
//         items: [
//           _buildTabItem(Icons.home, 'Home', 0),
//           _buildTabItem(Icons.category, 'Category', 1),
//           _buildTabItem(Icons.shopping_cart, 'Cart', 2),
//           _buildTabItem(Icons.percent_rounded, 'Offers', 3),
//           _buildTabItem(Icons.person, 'Account', 4),
//         ],
//         initialActiveIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }

//   TabItem _buildTabItem(IconData icon, String label, int index) {
//     return TabItem(
//         icon: AnimatedContainer(
//           duration: Duration(milliseconds: 300), // Smooth transition
//           width:
//               _selectedIndex == index ? 60 : 45, // Bulging effect size change
//           height:
//               _selectedIndex == index ? 60 : 45, // Bulging effect size change
//           decoration: BoxDecoration(
//             color: _selectedIndex == index ? Colors.green : Colors.transparent,
//             shape: BoxShape.circle,
//           ),
//           child: Icon(
//             icon,
//             size: _selectedIndex == index ? 28 : 20, // Larger icon for selected
//             color: _selectedIndex == index ? Colors.white : Colors.grey,
//           ),
//         ),
//         title: label,
//         fontFamily:
//             'Poppins-Regular' // Directly using the label as a string for selected tab
//         );
//   }
// }
// // import 'package:b_app/Features/common/other_screen.dart';
// // import 'package:b_app/Features/home/view/home_screen.dart';
// // import 'package:flutter/material.dart';

// // class MainScreen extends StatefulWidget {
// //   const MainScreen({Key? key}) : super(key: key);

// //   @override
// //   State<MainScreen> createState() => _MainScreenState();
// // }

// // class _MainScreenState extends State<MainScreen>
// //     with SingleTickerProviderStateMixin {
// //   int _selectedIndex = 0;
// //   late AnimationController _animationController;
// //   late Animation<double> _curveAnimation;

// //   final List<Widget> _screens = [
// //     HomeScreen(),
// //     HostScreen(title: 'Category'),
// //     HostScreen(title: 'Cart'),
// //     HostScreen(title: 'Offers'),
// //     HostScreen(title: 'Account')
// //   ];

// //   final List<NavigationItem> _items = [
// //     NavigationItem(
// //       icon: Icons.home_outlined,
// //       activeIcon: Icons.home,
// //       label: 'Home',
// //     ),
// //     NavigationItem(
// //       icon: Icons.grid_view_outlined,
// //       activeIcon: Icons.grid_view,
// //       label: 'Category',
// //     ),
// //     NavigationItem(
// //       icon: Icons.shopping_cart_outlined,
// //       activeIcon: Icons.shopping_cart,
// //       label: 'Cart',
// //     ),
// //     NavigationItem(
// //       icon: Icons.local_offer_outlined,
// //       activeIcon: Icons.local_offer,
// //       label: 'Offers',
// //     ),
// //     NavigationItem(
// //       icon: Icons.person_outline,
// //       activeIcon: Icons.person,
// //       label: 'Account',
// //     ),
// //   ];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _animationController = AnimationController(
// //       duration: Duration(milliseconds: 300),
// //       vsync: this,
// //     );
// //     _curveAnimation =
// //         Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
// //       parent: _animationController,
// //       curve: Curves.easeInOut,
// //     ));
// //   }

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //     _animationController.forward(from: 0.0); // Trigger the animation
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final double itemWidth = MediaQuery.of(context).size.width / _items.length;
// //     final double selectedItemOffset = itemWidth * _selectedIndex;

// //     return Scaffold(
// //       body: IndexedStack(
// //         index: _selectedIndex,
// //         children: _screens,
// //       ),
// //       bottomNavigationBar: Container(
// //         height: 75,
// //         child: Stack(
// //           children: [
// //             // Background color fill
// //             Positioned.fill(
// //               child: Container(color: Colors.white),
// //             ),
// //             // Top border with convex curve
// //             Positioned(
// //               top: 0,
// //               left: 0,
// //               right: 0,
// //               child: AnimatedBuilder(
// //                 animation: _curveAnimation,
// //                 builder: (context, child) {
// //                   return CustomPaint(
// //                     size: Size(MediaQuery.of(context).size.width, 75),
// //                     painter: ConvexBorderPainter(
// //                       selectedItemOffset: selectedItemOffset,
// //                       itemWidth: itemWidth,
// //                       animationValue: _curveAnimation.value,
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //             // Inactive items
// //             Positioned(
// //               bottom: 0,
// //               left: 0,
// //               right: 0,
// //               child: SizedBox(
// //                 height: 60,
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                   children: List.generate(_items.length, (index) {
// //                     final item = _items[index];
// //                     final isSelected = _selectedIndex == index;

// //                     if (isSelected) {
// //                       return Container(width: itemWidth);
// //                     }

// //                     return GestureDetector(
// //                       onTap: () => _onItemTapped(index),
// //                       child: Container(
// //                         width: itemWidth,
// //                         child: Column(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Icon(
// //                               item.icon,
// //                               color: Colors.grey[600],
// //                               size: 24,
// //                             ),
// //                             SizedBox(height: 4),
// //                             Text(
// //                               item.label,
// //                               style: TextStyle(
// //                                 color: Colors.grey[600],
// //                                 fontSize: 12,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     );
// //                   }),
// //                 ),
// //               ),
// //             ),
// //             // Selected item with animated bump
// //             AnimatedPositioned(
// //               duration: Duration(milliseconds: 200),
// //               curve: Curves.easeInOut,
// //               top: 0,
// //               left: selectedItemOffset,
// //               child: Container(
// //                 width: itemWidth,
// //                 child: Center(
// //                   child: Container(
// //                     width: 55,
// //                     height: 55,
// //                     decoration: BoxDecoration(
// //                       color: Color(0xFF4CAF50),
// //                       shape: BoxShape.circle,
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.grey.withOpacity(0.3),
// //                           blurRadius: 8,
// //                           offset: Offset(0, 4),
// //                         ),
// //                       ],
// //                     ),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Icon(
// //                           _items[_selectedIndex].activeIcon,
// //                           color: Colors.white,
// //                           size: 24,
// //                         ),
// //                         SizedBox(height: 2),
// //                         Text(
// //                           _items[_selectedIndex].label,
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 11,
// //                             fontWeight: FontWeight.w500,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class ConvexBorderPainter extends CustomPainter {
// //   final double selectedItemOffset;
// //   final double itemWidth;
// //   final double animationValue; // The animation value to control the curve

// //   ConvexBorderPainter({
// //     required this.selectedItemOffset,
// //     required this.itemWidth,
// //     required this.animationValue,
// //   });

// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final paint = Paint()
// //       ..color = Colors.grey[300]!
// //       ..style = PaintingStyle.stroke
// //       ..strokeWidth = 1.0;

// //     final path = Path();
// //     final centerX = selectedItemOffset + (itemWidth / 2);
// //     final curveWidth = 35.0;
// //     final curveHeight = 20.0;

// //     path.moveTo(0, 0);

// //     // Draw line to start of curve
// //     path.lineTo(centerX - curveWidth, 0);

// //     // Draw inverted curve (bumping outwards)
// //     path.cubicTo(
// //       centerX - curveWidth / 2, 0, // First control point
// //       centerX - curveWidth / 2,
// //       -curveHeight * animationValue, // Adjust control point by animation
// //       centerX, -curveHeight * animationValue, // End point of first curve
// //     );

// //     path.cubicTo(
// //       centerX + curveWidth / 2,
// //       -curveHeight * animationValue, // First control point of second curve
// //       centerX + curveWidth / 2, 0, // Second control point
// //       centerX + curveWidth, 0, // End point
// //     );

// //     // Complete the line
// //     path.lineTo(size.width, 0);

// //     canvas.drawPath(path, paint);
// //   }

// //   @override
// //   bool shouldRepaint(ConvexBorderPainter oldDelegate) {
// //     return oldDelegate.selectedItemOffset != selectedItemOffset ||
// //         oldDelegate.animationValue != animationValue;
// //   }
// // }

// // class NavigationItem {
// //   final IconData icon;
// //   final IconData activeIcon;
// //   final String label;

// //   NavigationItem({
// //     required this.icon,
// //     required this.activeIcon,
// //     required this.label,
// //   });
// // }
import 'package:b_app/Features/common/other_screen.dart';
import 'package:b_app/Features/home/view/home_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HostScreen(
      title: 'Category',
    ),
    HostScreen(
      title: 'Cart',
    ),
    HostScreen(
      title: 'Offers',
    ),
    HostScreen(
      title: 'Account',
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        height: 50,
        style: TabStyle.react,
        backgroundColor: Colors.white,
        activeColor: Colors.white,
        color: Colors.black,
        items: [
          _buildTabItem(Icons.home, 'Home', 0),
          _buildTabItem(Icons.grid_view, 'Category', 1),
          _buildTabItem(Icons.shopping_cart, 'Cart', 2),
          _buildTabItem(Icons.local_offer, 'Offers', 3),
          _buildTabItem(Icons.person, 'Account', 4),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  TabItem _buildTabItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return TabItem(
      icon: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: isSelected ? 60 : 45,
        height: isSelected ? 60 : 45,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 103, 143, 34)
              : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: isSelected ? 28 : 20,
          color: isSelected ? Colors.white : Colors.grey,
        ),
      ),
      title: label,
      fontFamily: 'Poppins-Regular',
    );
  }
}
