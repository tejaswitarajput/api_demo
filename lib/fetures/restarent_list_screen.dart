import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/constants/circular_progressbar_fullscreen.dart';
import 'package:untitled1/constants/palette.dart';
import 'package:untitled1/constants/router_constant.dart';
import 'package:untitled1/constants/show_alert_dialog.dart';
import 'package:untitled1/providers/current_location_provider.dart';

class RestarentListScreen extends StatefulWidget {
  const RestarentListScreen({Key key}) : super(key: key);
  @override
  _RestarentListScreenState createState() => _RestarentListScreenState();
}

class _RestarentListScreenState extends State<RestarentListScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentLocationtProvider>(
        builder: (context, kycHomeProv, child) {
      return SafeArea(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,

            //  FlagsRepository.getFlagsForKey()
            // backgroundColor: Colors.white70,
            appBar: AppBar(
              title: Text("KYC"),
              centerTitle: true,
            ),
            body: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Expanded(child: buildList(kycHomeProv)),
                      // addMargin == true
                      //     ? Container(
                      //         height: 80,
                      //       )
                      //     : Container(),
                    ],
                  ),
                ),
                // Positioned(
                //   child: loading
                //       ? CircularProgressbarFullscreen(
                //           title: loadingMessage,
                //           key: null,
                //         )
                //       : Container(),
                // ),
              ],
            )),
      );
    });
  }

//   Widget buildList(RestarentListProvider restarentProv) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       elevation: 5,
//       child: restarentProv.filteredDoctors.length == 0
//           ? Container(child: Center(child: Text("No data")))
//           : Container(
//               decoration: BoxDecoration(
//                   // color: Palette.primary,
//                   borderRadius: BorderRadius.all(Radius.circular(20))),
//               child: StreamBuilder<Object>(
//                   stream: null,
//                   builder: (context, snapshot) {
//                     return Column(
//                       children: [
//                         header(),
//                         Expanded(
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 child: ListView.builder(
//                                     controller: _scrollController,
//                                     itemCount:
//                                         restarentProv.filteredDoctors.length,
//                                     itemBuilder:
//                                         (BuildContext context, int index) {
//                                       return GestureDetector(
//                                         onTap: () {
//                                           Navigator.pushNamed(context,
//                                                   RouterConstants.KycParent,
//                                                   arguments: KycArguments(
//                                                       doctor: kycHomeProv
//                                                               .filteredDoctors[
//                                                           index]))
//                                               .then(onGoBack);
//                                         },
//                                         child: Container(
//                                           height: 50,
//                                           color: index.isEven
//                                               ? Palette.even
//                                               : Palette.odd,
//                                           child: Padding(
//                                             padding:
//                                                 const EdgeInsets.only(left: 8),
//                                             child: Row(
//                                               children: [
//                                                 Container(
//                                                   width: MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       4,
//                                                   child: Text(
//                                                     restarentProv
//                                                                 .filteredDoctors[
//                                                                     index]
//                                                                 .newDoctor ==
//                                                             false
//                                                         ? restarentProv
//                                                                 .filteredDoctors[
//                                                                     index]
//                                                                 .doctorFullname +
//                                                             "(${restarentProv.filteredDoctors[index].category})"
//                                                         : restarentProv
//                                                                 .filteredDoctors[
//                                                                     index]
//                                                                 .contactFirstName +
//                                                             " " +
//                                                             restarentProv
//                                                                 .filteredDoctors[
//                                                                     index]
//                                                                 .contactLastName,
//                                                     style: TextStyle(
//                                                         color: Palette.primary,
//                                                         fontSize: FontsConstants
//                                                             .listTiles,
//                                                         fontWeight:
//                                                             FontWeight.w700),
//                                                   ),
//                                                 ),
//                                                 SizedBox(width: 10),
//                                                 Container(
//                                                   width: MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       5.5,
//                                                   child: Text(
//                                                     restarentProv
//                                                         .filteredDoctors[index]
//                                                         .patchName,
//                                                     style: TextStyle(
//                                                         color: Palette.primary,
//                                                         // fontSize: FontsConstants
//                                                         //     .listTiles,
//                                                         fontWeight:
//                                                             FontWeight.w700),
//                                                   ),
//                                                 ),
//                                                 SizedBox(width: 5),
//                                                 Container(
//                                                   width: MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       6,
//                                                   child: Text(
//                                                     restarentProv
//                                                         .filteredDoctors[index]
//                                                         .clinicalCityName,
//                                                     style: TextStyle(
//                                                         color: Palette.primary,
//                                                         // fontSize: FontsConstants
//                                                         //     .listTiles,
//                                                         fontWeight:
//                                                             FontWeight.w700),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       );
//                                     }),
//                               ),
//                               // addMargin == true
//                               //     ? Container(
//                               //         height: 80,
//                               //       )
//                               //     : Container(),
//                             ],
//                           ),
//                         ),
//                         // addMargin == true
//                         //     ? Container(
//                         //         height: 80,
//                         //       )
//                         //     : Container(),
//                         Container(
//                           decoration: BoxDecoration(
//                               color: Palette.primary,
//                               borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(20),
//                                   bottomRight: Radius.circular(20))),
//                           height: 40,
//                         ),
//                       ],
//                     );
//                   }),
//             ),
//     );
//   }
// }

// Widget header() {
//   return Container(
//     height: 40,
//     decoration: BoxDecoration(
//         color: Palette.primary,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25), topRight: Radius.circular(25))),
//     child: Padding(
//       padding: const EdgeInsets.only(left: 10, right: 8, top: 8),
//       child: Row(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width / 4,
//             child: Text(
//               "Doctor",
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(width: 8),
//           Container(
//             width: MediaQuery.of(context).size.width / 5.5,
//             child: Text(
//               "Patch",
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(width: 10),
//           Container(
//             width: MediaQuery.of(context).size.width / 6,
//             child: Text(
//               "City",
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
}
