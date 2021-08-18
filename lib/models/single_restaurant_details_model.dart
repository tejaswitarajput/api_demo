// To parse this JSON data, do
//
//     final singleRestaurantDetailtModule = singleRestaurantDetailtModuleFromJson(jsonString);

import 'dart:convert';

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
    this.restaurantId,
    this.restaurantName,
    this.restaurantAddress,
    this.location,
    this.contactNumber,
    this.votes,
    this.rating,
    this.openingsHours,
    this.restaurantLogo,
    this.avgMealRate,
    this.botRestaurantId,
    this.distance,
    this.latitude,
    this.longitude,
    this.totalPledge,
    this.promoDetails,
    this.promoUrl,
    this.promoImage,
    this.restaurantFlag,
    this.shareFlag,
    this.feedbackFacility,
    this.homeDelivery,
    this.isClubAccount,
    this.happyHoursFromTime,
    this.happyHoursToTime,
    this.menuImages,
    this.crediteCards,
    this.cuisines,
    this.restaurantDishes,
    this.customersPromos,
    this.facilities,
    this.touristDetails,
    this.checkInStatus,
    this.cityId,
    this.cityName,
    this.minOrder,
    this.minTime,
    this.accountId,
    this.deliveryFromTime,
    this.deliveryToTime,
    this.groupId,
    this.restaurantDetailMenuUser,
    this.restaurantDetailMenuOwner,
    this.restaurantImage,
    this.weekTime,
    this.restaurantMinOrderValue,
    this.restaurantSafetyMeasure,
    this.brandId,
    this.brandDescription,
    this.locationId,
    this.locationName,
    this.boolIsOlo,
    this.boolIsEMenu,
    this.boolIsJustOrder,
    this.boolIsBill,
    this.boolIsSettlement,
    this.boolIsIrd,
    this.minDeliveryTime,
    this.homeDeliveryPickTime,
    this.eveDeliveryFromTime,
    this.eveDeliveryToTime,
    this.covidText,
    this.aboutRestaurantText,
    this.ownedByText,
    this.restaurantSafety,
    this.restaurantMobileImage,
    this.restaurantDesktopImage,
    this.enableAdvanceOrder,
    this.advanceOrderTimeSlotDuration,
    this.enablePayBillOption,
    this.enableFeedbackFacility,
    this.maxAdvanceOrderDays,
    this.isFreeFlowModifier,
    this.homeDeliveryDistRange,
    this.googleApiKey,
    this.avgWineCost,
    this.avgBeerCost,
    this.shareText,
    this.morningFromTime,
    this.morningToTime,
    this.eveningFromTime,
    this.eveningToTime,
    this.pickupTimeSlotDuration,
    this.deliveryTimeSlotDuration,
    this.enableJustOrderFeedbackFacility,
    this.brandWiseRestaurantCount,
    this.viewTypeFlag,
    this.enableCopyLocation,
    this.enableViewAllOutlet,
    this.enableGetdirections,
    this.restaurantShortDescription,
    this.imageForOrder,
    this.imageForDineIn,
    this.imageForReserve,
    this.imageForOffers,
    this.isAllowModifierQuantity,
    this.maxModifierQuantity,
    this.emailAddress,
    this.websiteLink,
    this.enableCurrentDayAdvanceOrder,
    this.restrictOffersInAdvanceOrder,
    this.enableSpecialInstructions,
    this.currencyText,
    this.currencySymbol,
  });

  int restaurantId;
  String restaurantName;
  String restaurantAddress;
  String location;
  String contactNumber;
  String votes;
  int rating;
  String openingsHours;
  String restaurantLogo;
  int avgMealRate;
  int botRestaurantId;
  int distance;
  String latitude;
  String longitude;
  int totalPledge;
  String promoDetails;
  String promoUrl;
  String promoImage;
  int restaurantFlag;
  int shareFlag;
  int feedbackFacility;
  int homeDelivery;
  int isClubAccount;
  String happyHoursFromTime;
  String happyHoursToTime;
  List<dynamic> menuImages;
  List<CrediteCard> crediteCards;
  List<Cuisine> cuisines;
  List<RestaurantDish> restaurantDishes;
  List<dynamic> customersPromos;
  List<Facility> facilities;
  List<TouristDetail> touristDetails;
  CheckInStatus checkInStatus;
  int cityId;
  String cityName;
  String minOrder;
  String minTime;
  int accountId;
  String deliveryFromTime;
  String deliveryToTime;
  String groupId;
  List<RestaurantDetailMenu> restaurantDetailMenuUser;
  List<RestaurantDetailMenu> restaurantDetailMenuOwner;
  String restaurantImage;
  List<dynamic> weekTime;
  List<dynamic> restaurantMinOrderValue;
  List<dynamic> restaurantSafetyMeasure;
  int brandId;
  String brandDescription;
  int locationId;
  String locationName;
  bool boolIsOlo;
  bool boolIsEMenu;
  bool boolIsJustOrder;
  bool boolIsBill;
  bool boolIsSettlement;
  bool boolIsIrd;
  int minDeliveryTime;
  dynamic homeDeliveryPickTime;
  dynamic eveDeliveryFromTime;
  dynamic eveDeliveryToTime;
  String covidText;
  dynamic aboutRestaurantText;
  String ownedByText;
  String restaurantSafety;
  dynamic restaurantMobileImage;
  dynamic restaurantDesktopImage;
  bool enableAdvanceOrder;
  String advanceOrderTimeSlotDuration;
  bool enablePayBillOption;
  bool enableFeedbackFacility;
  int maxAdvanceOrderDays;
  int isFreeFlowModifier;
  int homeDeliveryDistRange;
  String googleApiKey;
  int avgWineCost;
  int avgBeerCost;
  dynamic shareText;
  String morningFromTime;
  String morningToTime;
  String eveningFromTime;
  String eveningToTime;
  dynamic pickupTimeSlotDuration;
  dynamic deliveryTimeSlotDuration;
  bool enableJustOrderFeedbackFacility;
  int brandWiseRestaurantCount;
  dynamic viewTypeFlag;
  bool enableCopyLocation;
  bool enableViewAllOutlet;
  bool enableGetdirections;
  dynamic restaurantShortDescription;
  dynamic imageForOrder;
  dynamic imageForDineIn;
  dynamic imageForReserve;
  dynamic imageForOffers;
  bool isAllowModifierQuantity;
  int maxModifierQuantity;
  String emailAddress;
  String websiteLink;
  bool enableCurrentDayAdvanceOrder;
  bool restrictOffersInAdvanceOrder;
  bool enableSpecialInstructions;
  String currencyText;
  String currencySymbol;

  factory SingleRestaurantDetailtModel.fromJson(Map<String, dynamic> json) =>
      SingleRestaurantDetailtModel(
        restaurantId: json["RestaurantID"],
        restaurantName: json["RestaurantName"],
        restaurantAddress: json["RestaurantAddress"],
        location: json["Location"],
        contactNumber: json["ContactNumber"],
        votes: json["Votes"],
        rating: json["Rating"],
        openingsHours: json["OpeningsHours"],
        restaurantLogo: json["RestaurantLogo"],
        avgMealRate: json["AvgMealRate"],
        botRestaurantId: json["BOTRestaurantId"],
        distance: json["Distance"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        totalPledge: json["TotalPledge"],
        promoDetails: json["PromoDetails"],
        promoUrl: json["PromoURL"],
        promoImage: json["PromoImage"],
        restaurantFlag: json["RestaurantFlag"],
        shareFlag: json["ShareFlag"],
        feedbackFacility: json["FeedbackFacility"],
        homeDelivery: json["HomeDelivery"],
        isClubAccount: json["IsClubAccount"],
        happyHoursFromTime: json["HappyHoursFromTime"],
        happyHoursToTime: json["HappyHoursToTime"],
        menuImages: List<dynamic>.from(json["MenuImages"].map((x) => x)),
        crediteCards: List<CrediteCard>.from(
            json["CrediteCards"].map((x) => CrediteCard.fromJson(x))),
        cuisines: List<Cuisine>.from(
            json["Cuisines"].map((x) => Cuisine.fromJson(x))),
        restaurantDishes: List<RestaurantDish>.from(
            json["RestaurantDishes"].map((x) => RestaurantDish.fromJson(x))),
        customersPromos:
            List<dynamic>.from(json["CustomersPromos"].map((x) => x)),
        facilities: List<Facility>.from(
            json["Facilities"].map((x) => Facility.fromJson(x))),
        touristDetails: List<TouristDetail>.from(
            json["TouristDetails"].map((x) => TouristDetail.fromJson(x))),
        checkInStatus: CheckInStatus.fromJson(json["CheckInStatus"]),
        cityId: json["CityId"],
        cityName: json["CityName"],
        minOrder: json["MinOrder"],
        minTime: json["MinTime"],
        accountId: json["AccountId"],
        deliveryFromTime: json["DeliveryFromTime"],
        deliveryToTime: json["DeliveryToTime"],
        groupId: json["GroupId"],
        restaurantDetailMenuUser: List<RestaurantDetailMenu>.from(
            json["RestaurantDetailMenuUser"]
                .map((x) => RestaurantDetailMenu.fromJson(x))),
        restaurantDetailMenuOwner: List<RestaurantDetailMenu>.from(
            json["RestaurantDetailMenuOwner"]
                .map((x) => RestaurantDetailMenu.fromJson(x))),
        restaurantImage: json["RestaurantImage"],
        weekTime: List<dynamic>.from(json["WeekTime"].map((x) => x)),
        restaurantMinOrderValue:
            List<dynamic>.from(json["RestaurantMinOrderValue"].map((x) => x)),
        restaurantSafetyMeasure:
            List<dynamic>.from(json["RestaurantSafetyMeasure"].map((x) => x)),
        brandId: json["BrandId"],
        brandDescription: json["BrandDescription"],
        locationId: json["LocationId"],
        locationName: json["LocationName"],
        boolIsOlo: json["BoolIsOLO"],
        boolIsEMenu: json["BoolIsEMenu"],
        boolIsJustOrder: json["BoolIsJustOrder"],
        boolIsBill: json["BoolIsBill"],
        boolIsSettlement: json["BoolIsSettlement"],
        boolIsIrd: json["BoolIsIRD"],
        minDeliveryTime: json["MinDeliveryTime"],
        homeDeliveryPickTime: json["HomeDeliveryPickTime"],
        eveDeliveryFromTime: json["EveDeliveryFromTime"],
        eveDeliveryToTime: json["EveDeliveryToTime"],
        covidText: json["COVIDText"],
        aboutRestaurantText: json["AboutRestaurantText"],
        ownedByText: json["OwnedByText"],
        restaurantSafety: json["RestaurantSafety"],
        restaurantMobileImage: json["RestaurantMobileImage"],
        restaurantDesktopImage: json["RestaurantDesktopImage"],
        enableAdvanceOrder: json["EnableAdvanceOrder"],
        advanceOrderTimeSlotDuration: json["AdvanceOrderTimeSlotDuration"],
        enablePayBillOption: json["EnablePayBillOption"],
        enableFeedbackFacility: json["EnableFeedbackFacility"],
        maxAdvanceOrderDays: json["MaxAdvanceOrderDays"],
        isFreeFlowModifier: json["IsFreeFlowModifier"],
        homeDeliveryDistRange: json["HomeDeliveryDistRange"],
        googleApiKey: json["GoogleAPIKey"],
        avgWineCost: json["AvgWineCost"],
        avgBeerCost: json["AvgBeerCost"],
        shareText: json["ShareText"],
        morningFromTime: json["MorningFromTime"],
        morningToTime: json["MorningToTime"],
        eveningFromTime: json["EveningFromTime"],
        eveningToTime: json["EveningToTime"],
        pickupTimeSlotDuration: json["PickupTimeSlotDuration"],
        deliveryTimeSlotDuration: json["DeliveryTimeSlotDuration"],
        enableJustOrderFeedbackFacility:
            json["EnableJustOrderFeedbackFacility"],
        brandWiseRestaurantCount: json["BrandWiseRestaurantCount"],
        viewTypeFlag: json["ViewTypeFlag"],
        enableCopyLocation: json["EnableCopyLocation"],
        enableViewAllOutlet: json["EnableViewAllOutlet"],
        enableGetdirections: json["EnableGetdirections"],
        restaurantShortDescription: json["RestaurantShortDescription"],
        imageForOrder: json["ImageForOrder"],
        imageForDineIn: json["ImageForDine_In"],
        imageForReserve: json["ImageForReserve"],
        imageForOffers: json["ImageForOffers"],
        isAllowModifierQuantity: json["isAllowModifierQuantity"],
        maxModifierQuantity: json["maxModifierQuantity"],
        emailAddress: json["EmailAddress"],
        websiteLink: json["WebsiteLink"],
        enableCurrentDayAdvanceOrder: json["EnableCurrentDayAdvanceOrder"],
        restrictOffersInAdvanceOrder: json["RestrictOffersInAdvanceOrder"],
        enableSpecialInstructions: json["EnableSpecialInstructions"],
        currencyText: json["CurrencyText"],
        currencySymbol: json["CurrencySymbol"],
      );

  Map<String, dynamic> toJson() => {
        "RestaurantID": restaurantId,
        "RestaurantName": restaurantName,
        "RestaurantAddress": restaurantAddress,
        "Location": location,
        "ContactNumber": contactNumber,
        "Votes": votes,
        "Rating": rating,
        "OpeningsHours": openingsHours,
        "RestaurantLogo": restaurantLogo,
        "AvgMealRate": avgMealRate,
        "BOTRestaurantId": botRestaurantId,
        "Distance": distance,
        "Latitude": latitude,
        "Longitude": longitude,
        "TotalPledge": totalPledge,
        "PromoDetails": promoDetails,
        "PromoURL": promoUrl,
        "PromoImage": promoImage,
        "RestaurantFlag": restaurantFlag,
        "ShareFlag": shareFlag,
        "FeedbackFacility": feedbackFacility,
        "HomeDelivery": homeDelivery,
        "IsClubAccount": isClubAccount,
        "HappyHoursFromTime": happyHoursFromTime,
        "HappyHoursToTime": happyHoursToTime,
        "MenuImages": List<dynamic>.from(menuImages.map((x) => x)),
        "CrediteCards": List<dynamic>.from(crediteCards.map((x) => x.toJson())),
        "Cuisines": List<dynamic>.from(cuisines.map((x) => x.toJson())),
        "RestaurantDishes":
            List<dynamic>.from(restaurantDishes.map((x) => x.toJson())),
        "CustomersPromos": List<dynamic>.from(customersPromos.map((x) => x)),
        "Facilities": List<dynamic>.from(facilities.map((x) => x.toJson())),
        "TouristDetails":
            List<dynamic>.from(touristDetails.map((x) => x.toJson())),
        "CheckInStatus": checkInStatus.toJson(),
        "CityId": cityId,
        "CityName": cityName,
        "MinOrder": minOrder,
        "MinTime": minTime,
        "AccountId": accountId,
        "DeliveryFromTime": deliveryFromTime,
        "DeliveryToTime": deliveryToTime,
        "GroupId": groupId,
        "RestaurantDetailMenuUser":
            List<dynamic>.from(restaurantDetailMenuUser.map((x) => x.toJson())),
        "RestaurantDetailMenuOwner": List<dynamic>.from(
            restaurantDetailMenuOwner.map((x) => x.toJson())),
        "RestaurantImage": restaurantImage,
        "WeekTime": List<dynamic>.from(weekTime.map((x) => x)),
        "RestaurantMinOrderValue":
            List<dynamic>.from(restaurantMinOrderValue.map((x) => x)),
        "RestaurantSafetyMeasure":
            List<dynamic>.from(restaurantSafetyMeasure.map((x) => x)),
        "BrandId": brandId,
        "BrandDescription": brandDescription,
        "LocationId": locationId,
        "LocationName": locationName,
        "BoolIsOLO": boolIsOlo,
        "BoolIsEMenu": boolIsEMenu,
        "BoolIsJustOrder": boolIsJustOrder,
        "BoolIsBill": boolIsBill,
        "BoolIsSettlement": boolIsSettlement,
        "BoolIsIRD": boolIsIrd,
        "MinDeliveryTime": minDeliveryTime,
        "HomeDeliveryPickTime": homeDeliveryPickTime,
        "EveDeliveryFromTime": eveDeliveryFromTime,
        "EveDeliveryToTime": eveDeliveryToTime,
        "COVIDText": covidText,
        "AboutRestaurantText": aboutRestaurantText,
        "OwnedByText": ownedByText,
        "RestaurantSafety": restaurantSafety,
        "RestaurantMobileImage": restaurantMobileImage,
        "RestaurantDesktopImage": restaurantDesktopImage,
        "EnableAdvanceOrder": enableAdvanceOrder,
        "AdvanceOrderTimeSlotDuration": advanceOrderTimeSlotDuration,
        "EnablePayBillOption": enablePayBillOption,
        "EnableFeedbackFacility": enableFeedbackFacility,
        "MaxAdvanceOrderDays": maxAdvanceOrderDays,
        "IsFreeFlowModifier": isFreeFlowModifier,
        "HomeDeliveryDistRange": homeDeliveryDistRange,
        "GoogleAPIKey": googleApiKey,
        "AvgWineCost": avgWineCost,
        "AvgBeerCost": avgBeerCost,
        "ShareText": shareText,
        "MorningFromTime": morningFromTime,
        "MorningToTime": morningToTime,
        "EveningFromTime": eveningFromTime,
        "EveningToTime": eveningToTime,
        "PickupTimeSlotDuration": pickupTimeSlotDuration,
        "DeliveryTimeSlotDuration": deliveryTimeSlotDuration,
        "EnableJustOrderFeedbackFacility": enableJustOrderFeedbackFacility,
        "BrandWiseRestaurantCount": brandWiseRestaurantCount,
        "ViewTypeFlag": viewTypeFlag,
        "EnableCopyLocation": enableCopyLocation,
        "EnableViewAllOutlet": enableViewAllOutlet,
        "EnableGetdirections": enableGetdirections,
        "RestaurantShortDescription": restaurantShortDescription,
        "ImageForOrder": imageForOrder,
        "ImageForDine_In": imageForDineIn,
        "ImageForReserve": imageForReserve,
        "ImageForOffers": imageForOffers,
        "isAllowModifierQuantity": isAllowModifierQuantity,
        "maxModifierQuantity": maxModifierQuantity,
        "EmailAddress": emailAddress,
        "WebsiteLink": websiteLink,
        "EnableCurrentDayAdvanceOrder": enableCurrentDayAdvanceOrder,
        "RestrictOffersInAdvanceOrder": restrictOffersInAdvanceOrder,
        "EnableSpecialInstructions": enableSpecialInstructions,
        "CurrencyText": currencyText,
        "CurrencySymbol": currencySymbol,
      };
}

class CheckInStatus {
  CheckInStatus({
    this.statusFlag,
  });

  int statusFlag;

  factory CheckInStatus.fromJson(Map<String, dynamic> json) => CheckInStatus(
        statusFlag: json["StatusFlag"],
      );

  Map<String, dynamic> toJson() => {
        "StatusFlag": statusFlag,
      };
}

class CrediteCard {
  CrediteCard({
    this.crediteCardsImage,
    this.crediteCardName,
  });

  String crediteCardsImage;
  String crediteCardName;

  factory CrediteCard.fromJson(Map<String, dynamic> json) => CrediteCard(
        crediteCardsImage: json["CrediteCardsImage"],
        crediteCardName: json["CrediteCardName"],
      );

  Map<String, dynamic> toJson() => {
        "CrediteCardsImage": crediteCardsImage,
        "CrediteCardName": crediteCardName,
      };
}

class Cuisine {
  Cuisine({
    this.cuisine,
    this.cuisineId,
  });

  String cuisine;
  int cuisineId;

  factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
        cuisine: json["Cuisine"],
        cuisineId: json["CuisineId"],
      );

  Map<String, dynamic> toJson() => {
        "Cuisine": cuisine,
        "CuisineId": cuisineId,
      };
}

class Facility {
  Facility({
    this.facilities,
    this.values,
  });

  String facilities;
  bool values;

  factory Facility.fromJson(Map<String, dynamic> json) => Facility(
        facilities: json["Facilities"],
        values: json["Values"],
      );

  Map<String, dynamic> toJson() => {
        "Facilities": facilities,
        "Values": values,
      };
}

class RestaurantDetailMenu {
  RestaurantDetailMenu({
    this.uniqueid,
    this.discription,
    this.imageName,
    this.order,
  });

  String uniqueid;
  String discription;
  String imageName;
  int order;

  factory RestaurantDetailMenu.fromJson(Map<String, dynamic> json) =>
      RestaurantDetailMenu(
        uniqueid: json["Uniqueid"],
        discription: json["Discription"],
        imageName: json["ImageName"],
        order: json["Order"],
      );

  Map<String, dynamic> toJson() => {
        "Uniqueid": uniqueid,
        "Discription": discription,
        "ImageName": imageName,
        "Order": order,
      };
}

class RestaurantDish {
  RestaurantDish({
    this.restaurantDishId,
    this.restaurantDishName,
    this.rank,
    this.votes,
    this.isVeg,
    this.dishImage,
    this.dishGlossary,
    this.fmUser,
    this.friends,
    this.isDishLike,
    this.dishSequence,
    this.rate,
  });

  int restaurantDishId;
  String restaurantDishName;
  int rank;
  String votes;
  int isVeg;
  String dishImage;
  int dishGlossary;
  int fmUser;
  int friends;
  int isDishLike;
  int dishSequence;
  String rate;

  factory RestaurantDish.fromJson(Map<String, dynamic> json) => RestaurantDish(
        restaurantDishId: json["RestaurantDishId"],
        restaurantDishName: json["RestaurantDishName"],
        rank: json["Rank"],
        votes: json["Votes"],
        isVeg: json["IsVeg"],
        dishImage: json["DishImage"],
        dishGlossary: json["DishGlossary"],
        fmUser: json["FMUser"],
        friends: json["Friends"],
        isDishLike: json["IsDishLike"],
        dishSequence: json["DishSequence"],
        rate: json["Rate"],
      );

  Map<String, dynamic> toJson() => {
        "RestaurantDishId": restaurantDishId,
        "RestaurantDishName": restaurantDishName,
        "Rank": rank,
        "Votes": votes,
        "IsVeg": isVeg,
        "DishImage": dishImage,
        "DishGlossary": dishGlossary,
        "FMUser": fmUser,
        "Friends": friends,
        "IsDishLike": isDishLike,
        "DishSequence": dishSequence,
        "Rate": rate,
      };
}

class TouristDetail {
  TouristDetail({
    this.restaurantDishId,
    this.touristRank,
    this.touristVotes,
    this.touristFmUser,
    this.touristFriends,
  });

  int restaurantDishId;
  int touristRank;
  String touristVotes;
  int touristFmUser;
  int touristFriends;

  factory TouristDetail.fromJson(Map<String, dynamic> json) => TouristDetail(
        restaurantDishId: json["RestaurantDishId"],
        touristRank: json["TouristRank"],
        touristVotes: json["TouristVotes"],
        touristFmUser: json["TouristFMUser"],
        touristFriends: json["TouristFriends"],
      );

  Map<String, dynamic> toJson() => {
        "RestaurantDishId": restaurantDishId,
        "TouristRank": touristRank,
        "TouristVotes": touristVotes,
        "TouristFMUser": touristFmUser,
        "TouristFriends": touristFriends,
      };
}
