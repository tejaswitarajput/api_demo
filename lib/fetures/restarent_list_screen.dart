import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/constants/circular_progressbar_fullscreen.dart';
import 'package:untitled1/constants/palette.dart';
import 'package:untitled1/constants/router_constant.dart';
import 'package:untitled1/constants/show_alert_dialog.dart';
import 'package:untitled1/models/current_address_module.dart';
import 'package:untitled1/providers/current_location_provider.dart';
import 'package:untitled1/providers/restarent_list_provider.dart';

var bannerItems = ["Burger", "Noodles", "Pizza"];
var bannerImage = [
  'assets/images/hotel_2.png',
  'assets/images/hotel_3.png',
  'assets/images/hotel_4.png',
];

class RestarentListScreen extends StatefulWidget {
  const RestarentListScreen({Key key}) : super(key: key);

  @override
  _RestarentListScreenState createState() => _RestarentListScreenState();
}

class _RestarentListScreenState extends State<RestarentListScreen> {
  CurrentAddressModule address = CurrentAddressModule();

  @override
  void initState() {
    var currentProvider =
        Provider.of<RestaurantListProvider>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      address = await RestaurantListProvider().currentAddressData();

// executes after build
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Consumer<RestaurantListProvider>(
        builder: (context, kycHomeProv, child) {
      //  kycHomeProv.currentAddressData();
      //  kycHomeProv.restaurantListData();
      return Scaffold(
        body: FutureBuilder<CurrentAddressModule>(
            future: kycHomeProv
                .currentAddressData(), // a previously-obtained Future<String> or null
            builder: (BuildContext context,
                AsyncSnapshot<CurrentAddressModule> snapshot) {
              return (snapshot.hasData)
                  ? Container(
                      height: screenHeight,
                      width: screenWidth,
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 5, 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.menu)),
                                      Text(
                                        "Foodies",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.person)),
                                    ],
                                  )),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Palette.grey,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              offset: const Offset(0, 2),
                                              blurRadius: 8.0),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 4,
                                            bottom: 4),
                                        child: Text(
                                          kycHomeProv.address.cityName,
                                          style: const TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(kycHomeProv.address.fullAddress
                                        .toString()),
                                    Text(kycHomeProv.address.countryName
                                        .toString()),
                                  ],
                                ),
                              ),
                              BannerWidgetArea(),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: ListView.builder(
                                    itemCount: kycHomeProv.restarentList.length,
                                    primary: false,
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext context, int i) {
                                      return ListViewWidget(
                                        name: kycHomeProv.restarentList[i]
                                            .restaurantDishName,
                                        details: kycHomeProv
                                            .restarentList[i].restaurantName,
                                        timing: kycHomeProv
                                            .restarentList[i].dishType
                                            .toString(),
                                        rating: kycHomeProv
                                            .restarentList[i].restaurantCity,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            }),
      );
    });
  }
}

class BannerWidgetArea extends StatelessWidget {
  const BannerWidgetArea({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    PageController controller = PageController(initialPage: 1);
    List<Widget> banners = new List<Widget>();
    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0),
                    ]),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    bannerImage[x],
                    fit: BoxFit.cover,
                  )),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black])),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bannerItems[x],
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      "More then 40% off",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );

      banners.add(bannerView);
    }
    return Container(
      width: screenWidth,
      height: screenWidth * 9 / 16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  final String name;
  final String type;
  final String details;
  final String rating;
  final String timing;
  const ListViewWidget(
      {Key key, this.name, this.type, this.details, this.rating, this.timing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, blurRadius: 5.0, spreadRadius: 1.0),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset("assets/images/hotel_2.png",
                      height: 80, width: 80, fit: BoxFit.cover),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name),
                        Text(
                          details,
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.black45),
                          maxLines: 1,
                        ),
                        Text(
                          timing,
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.black45),
                          maxLines: 1,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
