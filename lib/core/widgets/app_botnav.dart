// import 'package:flutter/material.dart';
// import '../theme/app_colors.dart';
// import '../theme/app_theme.dart';


// class AppBottomNav extends StatelessWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;

//   const AppBottomNav({
//     super.key,
//     required this.currentIndex,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: AppColors.surfaceColor,
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x0D000000),
//             blurRadius: 10,
//             offset: Offset(0, -2),
//           ),
//         ],
//       ),
//       child: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: onTap,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         selectedItemColor: AppColors.textPrimaryColor,
//         unselectedItemColor: AppColors.textScondaryColor,
//         selectedFontSize: 12,
//         unselectedFontSize: 12,
//         selectedLabelStyle: AppTextStyle.pageTitle,
//         items: [
//           _buildNavItem(
//             icon: Icons.home_outlined,
//             activeIcon: Icons.home_rounded,
//             label: 'Home',
//             isSelected: currentIndex == 0,
//           ),
//           _buildNavItem(
//             icon: Icons.confirmation_number_outlined,
//             activeIcon: Icons.confirmation_number_rounded,
//             label: 'My Tickets',
//             isSelected: currentIndex == 1,
//           ),
//           _buildNavItem(
//             icon: Icons.notifications_none_rounded,
//             activeIcon: Icons.notifications_rounded,
//             label: 'Alerts',
//             isSelected: currentIndex == 2,
//           ),
//           _buildNavItem(
//             icon: Icons.person_outline_rounded,
//             activeIcon: Icons.person_rounded,
//             label: 'Profile',
//             isSelected: currentIndex == 3,
//           ),
//         ],
//       ),
//     );
//   }

//   BottomNavigationBarItem _buildNavItem({
//     required IconData icon,
//     required IconData activeIcon,
//     required String label,
//     required bool isSelected,
//   }) {
//     return BottomNavigationBarItem(
//       label: label,
//       icon: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(isSelected ? activeIcon : icon),
//           const SizedBox(height: 4),
         
//           Container(
//             height: 3,
//             width: 20,
//             decoration: BoxDecoration(
//               color: isSelected ? AppColors.primaryColor : Colors.transparent,
//               borderRadius: BorderRadius.circular(2),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home_rounded,
                label: 'Home',
                isSelected: currentIndex == 0,
                onTap: () => onTap(0),
              ),
              _NavItem(
                icon: Icons.confirmation_number_outlined,
                activeIcon: Icons.confirmation_number_rounded,
                label: 'My Tickets',
                isSelected: currentIndex == 1,
                onTap: () => onTap(1),
              ),
              _NavItem(
                icon: Icons.notifications_none_rounded,
                activeIcon: Icons.notifications_rounded,
                label: 'Alerts',
                isSelected: currentIndex == 2,
                onTap: () => onTap(2),
              ),
              _NavItem(
                icon: Icons.person_outline_rounded,
                activeIcon: Icons.person_rounded,
                label: 'Profile',
                isSelected: currentIndex == 3,
                onTap: () => onTap(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 72,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? AppColors.secondaryColor
                    : Colors.transparent,
              ),
              child: Icon(
                isSelected ? activeIcon : icon,
                size: 22,
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.secondaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                color: AppColors.textPrimaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              height: 3,
              width: 44,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}