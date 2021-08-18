import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/models/restarent_list_module.dart';
import 'package:untitled1/models/single_restaurant_details_model.dart';
import 'package:untitled1/providers/single_restaurant_details_provider.dart';
import 'package:untitled1/widgets/square_icon_button_widget.dart';
import 'package:untitled1/widgets/widget_functions.dart';

class SingleRestarentDetailScreen extends StatefulWidget {
  const SingleRestarentDetailScreen({Key key}) : super(key: key);

  @override
  _SingleRestarentDetailScreenState createState() =>
      _SingleRestarentDetailScreenState();
}

class _SingleRestarentDetailScreenState
    extends State<SingleRestarentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Consumer<SingleRestaurantProvider>(
        builder: (context, kycHomeProv, child) {
      return Scaffold(
        body: FutureBuilder<SingleRestaurantDetailtModel>(
            future: kycHomeProv.singleRestaurantData(),
            // a previously-obtained Future<String> or null
            builder: (BuildContext context,
                AsyncSnapshot<SingleRestaurantDetailtModel> snapshot) {
              return (snapshot.hasData)
                  ? Container(
                      height: screenHeight,
                      width: screenWidth,
                      child: Stack(children: [
                        SingleChildScrollView(
                            child: Container(
                                child: Column(children: [
                          Container(
                            height: screenHeight * 0.40,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff367501),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/hotel_2.png",
                                      width: screenWidth * 0.80,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: SquareIconButton(
                                      icon: Icons.arrow_back_ios_outlined,
                                      width: 50,
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      buttonColor: Colors.orange.shade100,
                                      iconColor: Colors.orange,
                                    )),
                              ],
                            ),
                          ),
                          addVerticalSpace(10),
                          Container(
                            color: Colors.grey.shade50,
                            child: Stack(clipBehavior: Clip.none, children: [
                              Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        addVerticalSpace(20),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    kycHomeProv.singleDetails
                                                        .restaurantName
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  addVerticalSpace(5),
                                                  RichText(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(children: [
                                                        WidgetSpan(
                                                            child: Icon(
                                                                Icons
                                                                    .location_on,
                                                                color:
                                                                    Colors.red,
                                                                size: 15)),
                                                        TextSpan(
                                                            text: kycHomeProv
                                                                .singleDetails
                                                                .location,
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .grey))
                                                      ])),
                                                ],
                                              ),
                                            ]),
                                        addVerticalSpace(20),
                                        RichText(
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.ellipsis,
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: kycHomeProv
                                                      .singleDetails
                                                      .openingsHours,
                                                  style: TextStyle(
                                                      color: Colors.orange)),
                                              TextSpan(
                                                  text: kycHomeProv
                                                      .singleDetails
                                                      .contactNumber
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.orange))
                                            ])),
                                        Divider(),
                                        Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 20.0),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  RichText(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(children: [
                                                        WidgetSpan(
                                                            child: Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .orange,
                                                                size: 15)),
                                                        TextSpan(
                                                            text: kycHomeProv
                                                                .singleDetails
                                                                .rating
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black45,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold))
                                                      ])),
                                                  RichText(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(children: [
                                                        WidgetSpan(
                                                            child: Icon(
                                                                Icons
                                                                    .access_time_sharp,
                                                                color:
                                                                    Colors.red,
                                                                size: 15)),
                                                        TextSpan(
                                                            text: kycHomeProv
                                                                .singleDetails
                                                                .distance
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black45,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold))
                                                      ])),
                                                  RichText(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(children: [
                                                        WidgetSpan(
                                                            child: Icon(
                                                                Icons.thumb_up,
                                                                color: Colors
                                                                    .green,
                                                                size: 15)),
                                                        TextSpan(
                                                            text: kycHomeProv
                                                                .singleDetails
                                                                .votes
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black45,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold))
                                                      ])),
                                                ])),
                                        Divider(),
                                        Text(
                                          "Overview",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        addVerticalSpace(10),
                                        Text(
                                          kycHomeProv
                                              .singleDetails.restaurantAddress
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        addVerticalSpace(100),

                                        // FutureBuilder<RestaurantsListModule>(
                                        //     future: kycHomeProv.restaurantListData(),
                                        //     // a previously-obtained Future<String> or null
                                        //     builder: (BuildContext context,
                                        //         AsyncSnapshot<RestaurantsListModule>
                                        //         snapshot) {
                                        //       return (snapshot.hasData)
                                        //           ? Container(
                                        //         child: Padding(
                                        //           padding: EdgeInsets.all(8),
                                        //           child: ListView.builder(
                                        //             itemCount: kycHomeProv
                                        //                 .restarentList.length,
                                        //             primary: false,
                                        //             shrinkWrap: true,
                                        //             itemBuilder:
                                        //                 (BuildContext context,
                                        //                 int i) {
                                        //               return InkWell(
                                        //                 onTap: () {
                                        //                   Navigator.pushNamed(
                                        //                     context,
                                        //                     RouterConstants
                                        //                         .SingleRestarentDetails,
                                        //                   );
                                        //                 },
                                        //                 child: ListViewWidget(
                                        //                   name: kycHomeProv
                                        //                       .restarentList[i]
                                        //                       .restaurantName,
                                        //                   details: kycHomeProv
                                        //                       .restarentList[i]
                                        //                       .cuisines,
                                        //                   address: kycHomeProv
                                        //                       .restarentList[i]
                                        //                       .locationName
                                        //                       .toString(),
                                        //                   city: kycHomeProv
                                        //                       .restarentList[i]
                                        //                       .restaurantCity,
                                        //                   distance: kycHomeProv
                                        //                       .restarentList[i]
                                        //                       .distance
                                        //                       .toString(),
                                        //                 ),
                                        //               );
                                        //             },
                                        //           ),
                                        //         ),
                                        //       )
                                        //           : Center(
                                        //         child: CircularProgressIndicator(),
                                        //       );
                                        //     }),
                                      ])),
                              Positioned(
                                top: -35,
                                right: 20,
                                child: InkWell(
                                  onTap: () {
                                    // Fluttertoast.showToast(msg: "Added to Favorite");
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.red.withOpacity(0.2),
                                              blurRadius: 10.0,
                                              spreadRadius: 5.0)
                                        ]),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          )
                        ])))
                      ]))
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            }),
      );
    });
  }
}

//             Container(
//               color: Colors.grey.shade50,
//               child: Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         addVerticalSpace(20),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "{widget.productData['name']}",
//                                 ),
//                                 addVerticalSpace(5),
//                                 RichText(
//                                     overflow: TextOverflow.ellipsis,
//                                     text: TextSpan(children: [
//                                       WidgetSpan(
//                                           child: Icon(Icons.location_on,
//                                               color: Colors.red, size: 15)),
//                                       TextSpan(
//                                         text: "{widget.productData['rest']",
//                                       )
//                                     ])),
//                               ],
//                             ),
//                             RichText(
//                                 textAlign: TextAlign.right,
//                                 overflow: TextOverflow.ellipsis,
//                                 text: TextSpan(children: [
//                                   TextSpan(
//                                       text: "\$",
//                                       style:
//                                           TextStyle(color: Colors.orange)),
//                                   TextSpan(
//                                       text: "{widget.productData['price']}",
//                                       style:
//                                           TextStyle(color: Colors.orange))
//                                 ])),
//                           ],
//                         ),
//                         addVerticalSpace(20),
//                         Divider(),
//                         Container(
//                           margin:
//                               const EdgeInsets.symmetric(vertical: 20.0),
//                           child: Row(
//                             mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                             children: [
//                               RichText(
//                                   overflow: TextOverflow.ellipsis,
//                                   text: TextSpan(children: [
//                                     WidgetSpan(
//                                         child: Icon(Icons.star,
//                                             color: Colors.orange,
//                                             size: 15)),
//                                     TextSpan(
//                                       text:
//                                           "{widget.productData['rating']}",
//                                     )
//                                   ])),
//                               RichText(
//                                   overflow: TextOverflow.ellipsis,
//                                   text: TextSpan(children: [
//                                     WidgetSpan(
//                                         child: Icon(Icons.access_time_sharp,
//                                             color: Colors.red, size: 15)),
//                                     TextSpan(
//                                       text: " 18 Mins",
//                                     ),
//                                   ])),
//                               RichText(
//                                   overflow: TextOverflow.ellipsis,
//                                   text: TextSpan(children: [
//                                     WidgetSpan(
//                                         child: Icon(Icons.location_on,
//                                             color: Colors.green, size: 15)),
//                                     TextSpan(
//                                       text: "2.3 KM",
//                                     )
//                                   ])),
//                             ],
//                           ),
//                         ),
//                         Divider(),
//                         Text(
//                           "Overview",
//                         ),
//                         addVerticalSpace(10),
//                         Text(
//                           "A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around. A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes",
//                         ),
//                         addVerticalSpace(100),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: -35,
//                     right: 20,
//                     child: InkWell(
//                       onTap: () {
//                         // Fluttertoast.showToast(msg: "Added to Favorite");
//                       },
//                       child: Container(
//                         width: 70,
//                         height: 70,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.red,
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.red.withOpacity(0.2),
//                                   blurRadius: 10.0,
//                                   spreadRadius: 5.0)
//                             ]),
//                         child: Icon(
//                           Icons.favorite,
//                           color: Colors.white,
//                           size: 35.0,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     )
//   ]),
//      ));
//   }
// }

// if (!addedToCart) ...[
// Positioned(
// bottom: 0,
// left: 0,
// child: Container(
// width: constraints.maxWidth,
// height: constraints.maxHeight * 0.12,
// decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)), color: Colors.white),
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20.0),
// child: SlideAction(
// text: "Add to Cart",
// key: _buttonKey,
// sliderButtonIcon: Icon(
// Icons.shopping_bag,
// color: Colors.white,
// ),
// onSubmit: () {
// Future.delayed(Duration(seconds: 1), () {
// setState(() {
// addedToCart = true;
// });
// // _buttonKey.currentState!.reset();
// });
// },
// sliderRotate: false,
// borderRadius: 10.0,
// elevation: 0,
// innerColor: COLOR_GREEN,
// outerColor: Colors.grey.shade100,
// ),
// ),
// ),
// )
