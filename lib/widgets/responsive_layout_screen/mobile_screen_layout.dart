// import 'package:flutter/material.dart';
// import 'package:google_search_app/utils/colors.dart';
// import 'package:google_search_app/widgets/mobile/mobile_footer.dart';
// import 'package:google_search_app/widgets/search_widget.dart';
// import 'package:svg_flutter/svg.dart';

// class MobileScreenLayout extends StatelessWidget {
//   const MobileScreenLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.sizeOf(context);
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: SizedBox(
//           width: size.width * 0.34,
//           child: const DefaultTabController(
//             length: 2,
//             child: TabBar(
//               labelColor: blueColor,
//               unselectedLabelColor: Colors.grey,
//               indicatorColor: blueColor,
//               tabs: [
//                 Tab(text: "ALL",),
//                 Tab(text: "IMAGES",),
//               ],
//             ),
//           ),
//         ),
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.menu,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             // icon: const Icon(Icons.apps),
//             icon: SvgPicture.asset(
//               "assets/images/more-apps.svg",
//               color: Colors.white,
//             ),
//             color: Colors.white,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 12).copyWith(
//               right: 16,
//               left: 8,
//             ),
//             child: MaterialButton(
//               onPressed: () {},
//               color: const Color(0xff1A73EB),
//               child: const Text(
//                 "Sign In",
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: size.height  * 0.9,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: size.height * 0.2,
//               ),
//               const Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         SearchWidget(width: 0.9,),
//                         // SizedBox(
//                         //   height: 20,
//                         // ),
//                       ],
//                     ),
//                     MobileFooter(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
