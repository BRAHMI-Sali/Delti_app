import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar ,
      body: Stack(
        fit: StackFit.expand,
        children: [
         
          Positioned(
            top: -145,
            right: -65,
            child: Container(
              width: 260,
              height: 260,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.decorativeColor2,
              ),
            ),
          ),

        
          Positioned(
            top: -145,
            right: -75,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.decorativeColor1,
              ),
            ),
          ),

          // Bottom-left
          Positioned(
            bottom: -150,
            left: -80,
            child: Container(
              width: 220,
              height: 220,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.decorativeColor1,
              ),
            ),
          ),

          // Bottom-right
          Positioned(
            bottom: -75,
            right: -150,
            child: Container(
              width: 210,
              height: 210,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.decorativeColor2,
              ),
            ),
          ),
          // Screen content
          SafeArea(child: body),
        ],
      ),
    );
  }
}
