import 'package:flutter/cupertino.dart';
import 'package:services/api_service.dart';

class RestarentListProvider extends ChangeNotifier {
  static Future<String> masterDownload() async {
    print('**MASTER DOWNLOAD**');
    String msg = '';

    String url =
        "http://fmtest.dishco.com/shawmanservices/api/GetFormatedAddress/FunPubRetrieveFormatedAddress?StrLocLatitude=19.1105765&StrLocLongitude=73.0174654";

    // String userName;
    // String password;
    // userName = await UserDataRepository.getUserId();
    // password = await UserDataRepository.getUserPassword();

    // url = url +
    //     "?userid=" +
    //     userName +
    //     "&locations=%7B%22locations%22%3A%5B%5D%7D" +
    //     "&version=1.0" +
    //     "&password=" +
    //     password;
    Map<String, String> requestHeaders = {
      "Content-Type": 'application/json; charset=UTF-8',
      'AndroidPhone':
          'EV6FTlgBhOalM+qjJpr2OZpAEpPkYJHC5I1aOWyeLevwSIpuzyKEAg==',
    };
    print("token===$url");
    Map<String, dynamic> responseData =
        await APIService.postEndpointData(url, requestHeaders)
            .catchError((error) {
      msg = error.message;
    });
    print(responseData);

    // if (responseData['code'] == 0) {
    MasterdataModule data;
    try {
      data = MasterdataModule.fromJson(responseData);
      MasterDataRepository repo = MasterDataRepository();
      //MtpMasterDataRepository mtprepo = MtpMasterDataRepository();
      await repo.saveMasterData(data.kycMasterData);
      // mtprepo.copyStpData();
    } catch (e) {
      print(e);

      msg = 'Parsing failed!';
      return msg;
    }
    msg = responseData['message'];
    return msg;
    // }
    // else {
    // return msg;
    // }
  }
}
