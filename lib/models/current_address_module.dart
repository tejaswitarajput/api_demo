// To parse this JSON data, do
//
//     final currentAddressModule = currentAddressModuleFromJson(jsonString);

import 'dart:convert';

CurrentAddressModule currentAddressModuleFromJson(String str) =>
    CurrentAddressModule.fromJson(json.decode(str));

String currentAddressModuleToJson(CurrentAddressModule data) =>
    json.encode(data.toJson());

class CurrentAddressModule {
  CurrentAddressModule({
    this.fullAddress,
    this.cityId,
    this.cityName,
    this.countryName,
    this.countryId,
    this.message,
  });

  String fullAddress;
  int cityId;
  String cityName;
  String countryName;
  int countryId;
  dynamic message;

  factory CurrentAddressModule.fromJson(Map<String, dynamic> json) =>
      CurrentAddressModule(
        fullAddress: json["FullAddress"],
        cityId: json["CityId"],
        cityName: json["CityName"],
        countryName: json["CountryName"],
        countryId: json["CountryId"],
        message: json["Message"],
      );

  Map<String, dynamic> toJson() => {
        "FullAddress": fullAddress,
        "CityId": cityId,
        "CityName": cityName,
        "CountryName": countryName,
        "CountryId": countryId,
        "Message": message,
      };
}
