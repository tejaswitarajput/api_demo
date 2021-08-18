import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:services/api_service.dart';
import 'package:untitled1/models/current_address_module.dart';
import 'package:untitled1/models/restarent_list_module.dart';

class CurrentLocationtProvider extends ChangeNotifier {
  // LatLng currentPostion;

  void init() async {
    await currentAddressData();
    await restaurantListData();
  }

  // void _getUserLocation() async {
  //   var position = await GeolocatorPlatform.instance
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //
  //   // setState(() {
  //   currentPostion = LatLng(position.latitude, position.longitude);
  //   //  });
  // }

  static Future<CurrentAddressModule> currentAddressData() async {
    CurrentAddressModule data = CurrentAddressModule();
    String msg = '';

    String url =
        "http://fmtest.dishco.com/shawmanservices/api/GetFormatedAddress/FunPubRetrieveFormatedAddress?StrLocLatitude=19.1105765&StrLocLongitude=73.0174654";

    Map<String, String> requestHeaders = {
      "Content-Type": 'application/json; charset=UTF-8',
      'AndroidPhone':
          'EV6FTlgBhOalM+qjJpr2OZpAEpPkYJHC5I1aOWyeLevwSIpuzyKEAg==',
    };
    print("token===$url");
    Map<String, dynamic> responseData =
        await APIService.postEndpointData(url, headers: requestHeaders)
            .catchError((error) {
      //    msg = error.message;
    });
    print(responseData);

    try {
      data = CurrentAddressModule.fromJson(responseData);

      print("data$data");
    } catch (e) {
      print(e);

      msg = 'Parsing failed!';
    }
    return data;
  }

  static Future<RestaurantsListModule> restaurantListData() async {
    RestaurantsListModule data = RestaurantsListModule();

    String url =
        "http://fmtest.dishco.com/shawmanservices/api/RestaurantDetailsByFilter/GetFunPubRestaurantDetailsByFilter?StrLocLatitude=19.1105765&StrLocLongitude=73.0174654&StrLocCityName=Navi Mumbai&IntLocOrderby=1&IntLocNoOfRecords=0";

    Map<String, String> requestHeaders = {
      "Content-Type": 'application/json; charset=UTF-8',
      'AndroidPhone':
          'EV6FTlgBhOalM+qjJpr2OZpAEpPkYJHC5I1aOWyeLevwSIpuzyKEAg==',
    };
    print("token===$url");
    Map<String, dynamic> responseData =
        await APIService.postEndpointData(url, headers: requestHeaders)
            .catchError((error) {});
    print(responseData);

    try {
      data = RestaurantsListModule.fromJson(responseData);
      print("data$data");
    } catch (e) {
      print(e);
    }
    return data;
  }
}
