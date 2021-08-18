import 'package:flutter/material.dart';
import 'package:services/api_service.dart';
import 'package:untitled1/models/single_restaurant_details_model.dart';

class SingleRestaurantProvider extends ChangeNotifier {
  SingleRestaurantDetailtModel singleDetails = SingleRestaurantDetailtModel();

   Future<SingleRestaurantDetailtModel> singleRestaurantData() async {
    SingleRestaurantDetailtModel data = SingleRestaurantDetailtModel();

    String url =
        "http://fmtest.dishco.com/shawmanservices/api/SingleRestaurantDetails/GetFuncPubGetSingleRestaurantDetails?IntLocRestaurantId=636735&StrLocLatitude=19.0641022&StrLocLongitude=72.9967391";

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
      data = SingleRestaurantDetailtModel.fromJson(responseData);
      print("data$data");
      singleDetails = data;
    } catch (e) {
      print(e);
    }
    return data;
  }
}
