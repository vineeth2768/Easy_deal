// import 'dart:async';

// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   static const String routeName = '/splash';

//   const SplashScreen({super.key});
//   static Route route() {
//     return MaterialPageRoute(
//         settings: const RouteSettings(name: routeName),
//         builder: (context) => const SplashScreen());
//   }

//   @override
//   Widget build(BuildContext context) {
//     Timer(const Duration(seconds: 2),
//         () => Navigator.pushNamed(context, '/home'));
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Image.asset("assets/splash/logo.png", cacheHeight: 250),
//           ),
//           const SizedBox(height: 30),
//           Container(
//             height: MediaQuery.of(context).size.height / 15,
//             width: MediaQuery.of(context).size.width / 2,
//             color: Colors.black,
//             child: const Center(
//               child: Text(
//                 "Deal Easy",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
