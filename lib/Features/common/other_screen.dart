import 'package:b_app/common_widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HostScreen extends StatelessWidget {
  final String title;
  const HostScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
      ),
      body: _buildEmptyState('Under Production',
          'assets/animations/Animation - 1737715242572.json'),
    );
  }

  Widget _buildEmptyState(String message, String imagePath) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Lottie.asset(imagePath),
                    ),
                    const SizedBox(height: 16),
                    Text(message,
                        textAlign: TextAlign.center, style: styling()),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
