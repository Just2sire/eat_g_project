// import 'package:flutter/material.dart';
// import 'package:google_search_app/utils/colors.dart';
// import 'package:google_search_app/widgets/search_buttons_widgets.dart';
// import 'package:google_search_app/widgets/search_widget.dart';
// import 'package:google_search_app/widgets/translation_button.dart';
// import 'package:google_search_app/widgets/web/web_footer.dart';
// import 'package:svg_flutter/svg.dart';

// class WebScreenLayout extends StatelessWidget {
//   const WebScreenLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.sizeOf(context);
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: const Text(
//               "Gmail",
//               style: TextStyle(color: primaryColor),
//             ),
//           ),
//           TextButton(
//             onPressed: () {},
//             child: const Text(
//               "Images",
//               style: TextStyle(color: primaryColor),
//             ),
//           ),
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
//       body: Column(
//         children: [
//           SizedBox(
//             height: size.height * 0.2,
//           ),
//           const Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     SearchWidget(width: 0.35,),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     SearchButtons(),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TranslationButton(),
//                   ],
//                 ),
//                 WebFooter(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
