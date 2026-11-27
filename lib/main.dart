// you may switch between thses two to see the resluts of the scaffold and the bottom navigation bar 

// import 'package:flutter/material.dart';
// import 'core/theme/app_text_style.dart';
// import 'core/widgets/app_botnav.dart';
// import 'core/widgets/app_scaffold.dart';
// import 'core/widgets/app_header.dart';

// void main() {
//   runApp(const DeltiApp());
// }

// class DeltiApp extends StatelessWidget {
//   const DeltiApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Delti',
//       debugShowCheckedModeBanner: false,
     
//       home: const _PreviewScreen(),
//     );
//   }
// }

// class _PreviewScreen extends StatefulWidget {
//   const _PreviewScreen();

//   @override
//   State<_PreviewScreen> createState() => _PreviewScreenState();
// }

// class _PreviewScreenState extends State<_PreviewScreen> {
//   int _currentIndex = 2;

//   @override
//   Widget build(BuildContext context) {
//     return AppScaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [

//           const SizedBox(
//             height: 70,

//             child : AppHeader(showBell : true,  hasUnreadAlert :false , onBellTap: null),
//           ),
//         ],
//       ),
//       bottomNavigationBar: AppBottomNav(
//         currentIndex: _currentIndex,
//         onTap: (index) => setState(() => _currentIndex = index),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'core/widgets/app_scaffold.dart';

void main() {
  runApp(const DeltiApp());
}

class DeltiApp extends StatelessWidget {
  const DeltiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delti',
      debugShowCheckedModeBanner: false,
      home: const AppScaffold(
        body: SizedBox.expand(),
      ),
    );
  }
}
