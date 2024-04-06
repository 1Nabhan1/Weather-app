// import 'package:flutter/material.dart';
// import 'package:get/get.dart'; // Import the get package
//
// class tst extends GetxController {}
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final tst ts = Get.put(tst());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: ts.isSearching.value ? BuildSearchAppBar() : BuildAppBar(),
//       body: Column(
//         children: [
//           Obx(
//             () => Container(
//               height: 50,
//               child: ts.isSearching.value ? BuildSearchAppBar() : BuildAppBar(),
//             ),
//           ),
//           ListView.builder(
//             itemCount: 10,
//             shrinkWrap: true,
//             scrollDirection: Axis.vertical,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text('Item $index'),
//               );
//             },
//           )
//           // CustomScrollView(
//           //   slivers: [
//           //     SliverList(
//           //       delegate: SliverChildBuilderDelegate(
//           //         (BuildContext context, int index) {
//           //           return ListTile(
//           //             title: Text('Item $index'),
//           //           );
//           //         },
//           //         childCount: 50,
//           //       ),
//           //     ),
//           //   ],
//           // ),
//         ],
//       ),
//     );
//   }
// }
//
// class BuildAppBar extends StatelessWidget {
//   const BuildAppBar({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     final tst ts = Get.put(tst());
//     return AppBar(
//       title: Text('Sliver App Bar Demo'),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.search),
//           onPressed: () {
//             ts.isSearching.value = true;
//           },
//         ),
//       ],
//     );
//   }
// }
//
// class BuildSearchAppBar extends StatelessWidget {
//   const BuildSearchAppBar({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     final tst ts = Get.put(tst());
//     return AppBar(
//       title: TextField(
//         decoration: InputDecoration(
//           hintText: 'Search...',
//           border: InputBorder.none,
//         ),
//         onSubmitted: (String value) {
//           // Perform search operation here
//         },
//       ),
//       leading: IconButton(
//         icon: Icon(Icons.arrow_back),
//         onPressed: () {
//           ts.isSearching.value = false;
//         },
//       ),
//     );
//   }
// }
