import 'package:flutter/material.dart';
import 'package:services/api_service.dart';
import 'package:untitled1/models/current_address_module.dart';

class RestarentListProvider extends ChangeNotifier {
  static Future<CurrentAddressModule> restarentListData() async {
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
}
