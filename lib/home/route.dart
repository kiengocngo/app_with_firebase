// import 'package:flutter/widgets.dart';
// import 'home_screen.dart';

// Route creatRoute() {
//   return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) =>
//           const HomeScreen(),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(0.0, 1.0);
//         const end = Offset.zero;
//         const curve = Curves.ease;
//         final tween =
//             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//         final curvedAnimation =
//             CurvedAnimation(parent: animation, curve: curve);
//         return SlideTransition(
//           position: tween.animate(curvedAnimation),
//           child: child,
//         );
//       });
// }
