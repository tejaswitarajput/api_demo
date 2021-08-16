// To parse this JSON data, do
//
//     final singleRestaurantDetailtModule = singleRestaurantDetailtModuleFromJson(jsonString);

import 'dart:convert';

SingleRestaurantDetailtModel singleRestaurantDetailtModelFromJson(String str) =>
    SingleRestaurantDetailtModel.fromJson(json.decode(str));

String singleRestaurantDetailtModelToJson(SingleRestaurantDetailtModel data) =>
    json.encode(data.toJson());

class SingleRestaurantDetailtModel {
  SingleRestaurantDetailtModel({
    this.allRestaurantDishes,
    this.imageAdvertisement,
    this.suggestedImages,
    this.popUpImages,
    this.notificationCount,
    this.message,
    this.noOfRestaurants,
  });

  List<AllRestaurantDish> allRestaurantDishes;
  List<ImageAdvertisement> imageAdvertisement;
  List<SuggestedImage> suggestedImages;
  List<dynamic> popUpImages;
  NotificationCount notificationCount;
  dynamic message;
  NoOfRestaurants noOfRestaurants;

  factory SingleRestaurantDetailtModel.fromJson(Map<String, dynamic> json) =>
      SingleRestaurantDetailtModel(
        allRestaurantDishes: List<AllRestaurantDish>.from(
            json["AllRestaurantDishes"]
                .map((x) => AllRestaurantDish.fromJson(x))),
        imageAdvertisement: List<ImageAdvertisement>.from(
            json["ImageAdvertisement"]
                .map((x) => ImageAdvertisement.fromJson(x))),
        suggestedImages: List<SuggestedImage>.from(
            json["SuggestedImages"].map((x) => SuggestedImage.fromJson(x))),
        popUpImages: List<dynamic>.from(json["PopUpImages"].map((x) => x)),
        notificationCount:
            NotificationCount.fromJson(json["NotificationCount"]),
        message: json["Message"],
        noOfRestaurants: NoOfRestaurants.fromJson(json["NoOfRestaurants"]),
      );

  Map<String, dynamic> toJson() => {
        "AllRestaurantDishes":
            List<dynamic>.from(allRestaurantDishes.map((x) => x.toJson())),
        "ImageAdvertisement":
            List<dynamic>.from(imageAdvertisement.map((x) => x.toJson())),
        "SuggestedImages":
            List<dynamic>.from(suggestedImages.map((x) => x.toJson())),
        "PopUpImages": List<dynamic>.from(popUpImages.map((x) => x)),
        "NotificationCount": notificationCount.toJson(),
        "Message": message,
        "NoOfRestaurants": noOfRestaurants.toJson(),
      };
}

class AllRestaurantDish {
  AllRestaurantDish({
    this.restaurantId,
    this.restaurantName,
    this.restaurantDishId,
    this.restaurantDishName,
    this.locationName,
    this.restaurantCity,
    this.distance,
    this.votes,
    this.dishRank,
    this.latitude,
    this.longitude,
    this.dishImage,
    this.promoFlag,
    this.fmUsers,
    this.noOfCoupons,
    this.totalPledge,
    this.dishType,
    this.friends,
    this.dishSequence,
    this.cuisines,
    this.accountId,
    this.chainOfRest,
  });

  int restaurantId;
  String restaurantName;
  int restaurantDishId;
  String restaurantDishName;
  String locationName;
  RestaurantCity restaurantCity;
  double distance;
  int votes;
  int dishRank;
  String latitude;
  String longitude;
  String dishImage;
  int promoFlag;
  int fmUsers;
  int noOfCoupons;
  int totalPledge;
  int dishType;
  int friends;
  int dishSequence;
  String cuisines;
  int accountId;
  int chainOfRest;

  factory AllRestaurantDish.fromJson(Map<String, dynamic> json) =>
      AllRestaurantDish(
        restaurantId: json["RestaurantId"],
        restaurantName: json["RestaurantName"],
        restaurantDishId: json["RestaurantDishId"],
        restaurantDishName: json["RestaurantDishName"],
        locationName: json["LocationName"],
        restaurantCity: json["RestaurantCity"],
        distance: json["Distance"].toDouble(),
        votes: json["Votes"],
        dishRank: json["DishRank"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        dishImage: json["DishImage"],
        promoFlag: json["PromoFlag"],
        fmUsers: json["FmUsers"],
        noOfCoupons: json["NoOfCoupons"],
        totalPledge: json["TotalPledge"],
        dishType: json["DishType"],
        friends: json["Friends"],
        dishSequence: json["DishSequence"],
        cuisines: json["Cuisines"],
        accountId: json["AccountId"],
        chainOfRest: json["ChainOfRest"],
      );

  Map<String, dynamic> toJson() => {
        "RestaurantId": restaurantId,
        "RestaurantName": restaurantName,
        "RestaurantDishId": restaurantDishId,
        "RestaurantDishName": restaurantDishName,
        "LocationName": locationName,
        "RestaurantCity": restaurantCity,
        "Distance": distance,
        "Votes": votes,
        "DishRank": dishRank,
        "Latitude": latitude,
        "Longitude": longitude,
        "DishImage": dishImage,
        "PromoFlag": promoFlag,
        "FmUsers": fmUsers,
        "NoOfCoupons": noOfCoupons,
        "TotalPledge": totalPledge,
        "DishType": dishType,
        "Friends": friends,
        "DishSequence": dishSequence,
        "Cuisines": cuisines,
        "AccountId": accountId,
        "ChainOfRest": chainOfRest,
      };
}

enum RestaurantCity { NAVI_MUMBAI }

class ImageAdvertisement {
  ImageAdvertisement({
    this.id,
    this.restaurantId,
    this.imageName,
    this.timePeriod,
    this.rankOrder,
    this.message,
    this.accountId,
    this.chainOfRest,
    this.lastFlag,
    this.advertisementType,
    this.advertisementName,
    this.advertisementDetails,
    this.advertisementsPositions,
  });

  int id;
  int restaurantId;
  String imageName;
  int timePeriod;
  int rankOrder;
  dynamic message;
  int accountId;
  int chainOfRest;
  int lastFlag;
  int advertisementType;
  dynamic advertisementName;
  dynamic advertisementDetails;
  dynamic advertisementsPositions;

  factory ImageAdvertisement.fromJson(Map<String, dynamic> json) =>
      ImageAdvertisement(
        id: json["Id"],
        restaurantId: json["RestaurantId"],
        imageName: json["ImageName"],
        timePeriod: json["TimePeriod"],
        rankOrder: json["RankOrder"],
        message: json["Message"],
        accountId: json["AccountId"],
        chainOfRest: json["ChainOfRest"],
        lastFlag: json["LastFlag"],
        advertisementType: json["AdvertisementType"],
        advertisementName: json["AdvertisementName"],
        advertisementDetails: json["AdvertisementDetails"],
        advertisementsPositions: json["AdvertisementsPositions"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "RestaurantId": restaurantId,
        "ImageName": imageName,
        "TimePeriod": timePeriod,
        "RankOrder": rankOrder,
        "Message": message,
        "AccountId": accountId,
        "ChainOfRest": chainOfRest,
        "LastFlag": lastFlag,
        "AdvertisementType": advertisementType,
        "AdvertisementName": advertisementName,
        "AdvertisementDetails": advertisementDetails,
        "AdvertisementsPositions": advertisementsPositions,
      };
}

class NoOfRestaurants {
  NoOfRestaurants({
    this.noOfRestaurants,
  });

  int noOfRestaurants;

  factory NoOfRestaurants.fromJson(Map<String, dynamic> json) =>
      NoOfRestaurants(
        noOfRestaurants: json["NoOfRestaurants"],
      );

  Map<String, dynamic> toJson() => {
        "NoOfRestaurants": noOfRestaurants,
      };
}

class NotificationCount {
  NotificationCount({
    this.notificationCount,
    this.countOfCoupons,
    this.countOfChat,
    this.countOfBookings,
    this.countOfFriends,
  });

  int notificationCount;
  int countOfCoupons;
  int countOfChat;
  int countOfBookings;
  int countOfFriends;

  factory NotificationCount.fromJson(Map<String, dynamic> json) =>
      NotificationCount(
        notificationCount: json["NotificationCount"],
        countOfCoupons: json["CountOfCoupons"],
        countOfChat: json["CountOfChat"],
        countOfBookings: json["CountOfBookings"],
        countOfFriends: json["CountOfFriends"],
      );

  Map<String, dynamic> toJson() => {
        "NotificationCount": notificationCount,
        "CountOfCoupons": countOfCoupons,
        "CountOfChat": countOfChat,
        "CountOfBookings": countOfBookings,
        "CountOfFriends": countOfFriends,
      };
}

class SuggestedImage {
  SuggestedImage({
    this.serialNumber,
    this.imageSize,
    this.suggestionImage,
    this.linkedPage,
    this.paraMeters,
    this.message,
    this.pageAction,
    this.restaurantId,
    this.accountId,
    this.flag,
    this.suggestionId,
    this.searchType,
  });

  int serialNumber;
  int imageSize;
  String suggestionImage;
  String linkedPage;
  String paraMeters;
  dynamic message;
  String pageAction;
  int restaurantId;
  int accountId;
  int flag;
  int suggestionId;
  int searchType;

  factory SuggestedImage.fromJson(Map<String, dynamic> json) => SuggestedImage(
        serialNumber: json["SerialNumber"],
        imageSize: json["ImageSize"],
        suggestionImage: json["SuggestionImage"],
        linkedPage: json["LinkedPage"],
        paraMeters: json["ParaMeters"],
        message: json["Message"],
        pageAction: json["PageAction"],
        restaurantId: json["RestaurantId"],
        accountId: json["AccountId"],
        flag: json["Flag"],
        suggestionId: json["SuggestionId"],
        searchType: json["SearchType"],
      );

  Map<String, dynamic> toJson() => {
        "SerialNumber": serialNumber,
        "ImageSize": imageSize,
        "SuggestionImage": suggestionImage,
        "LinkedPage": linkedPage,
        "ParaMeters": paraMeters,
        "Message": message,
        "PageAction": pageAction,
        "RestaurantId": restaurantId,
        "AccountId": accountId,
        "Flag": flag,
        "SuggestionId": suggestionId,
        "SearchType": searchType,
      };
}
