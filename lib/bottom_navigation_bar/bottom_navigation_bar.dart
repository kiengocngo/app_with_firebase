// import 'package:app_with_firebase/home/home_screen.dart';
// import 'package:app_with_firebase/settings/settings_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({Key? key}) : super(key: key);

//   @override
//   State<CustomBottomNavigationBar> createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     HomeScreen(
//       uId: '',
//     ),
//     SettingScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: IndexedStack(
//           index: _selectedIndex,
//           children: _widgetOptions,
//         ),
//       ),
//       bottomNavigationBar: buildBottomNavigationBar(context),
//     );
//   }

//   Container buildBottomNavigationBar(BuildContext context) {
//     return Container(
//       height: 80,
//       color: const Color.fromARGB(255, 23, 23, 23),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       _selectedIndex = 0;
//                     });
//                   },
//                   icon: Icon(
//                     CupertinoIcons.home,
//                     color: _selectedIndex == 0 ? Colors.white : Colors.grey,
//                   ),
//                 ),
//                 Text(
//                   'Trang chủ',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: _selectedIndex == 0 ? Colors.white : Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 IconButton(
//                   enableFeedback: false,
//                   onPressed: () {
//                     setState(() {
//                       _selectedIndex = 1;
//                     });
//                   },
//                   icon: Icon(
//                     CupertinoIcons.settings,
//                     color: _selectedIndex == 1 ? Colors.white : Colors.grey,
//                   ),
//                 ),
//                 Text(
//                   'Cài đặt',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: _selectedIndex == 1 ? Colors.white : Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
