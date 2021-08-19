import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants/router_constant.dart';
import 'package:untitled1/fetures/restarent_list_screen.dart';
import 'package:untitled1/fetures/single_restarent_details_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  var arguments;

  switch (settings.name) {
    case RouterConstants.MainRoute:
      return MaterialPageRoute(
          settings: settings, builder: (context) => RestarentListScreen());

    case RouterConstants.HomeScreenRoute:
      return MaterialPageRoute(
          settings: settings, builder: (context) => RestarentListScreen());

    case RouterConstants.SingleRestarentDetails:
      //  arguments = settings.arguments as EmployeeArgument;
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => SingleRestarentDetailScreen(),
      );
    // case RouterConstants.EditEmployeeScreenRoute:
    //   arguments = settings.arguments as EmployeeArgument;
    //   return MaterialPageRoute(
    //     settings: settings,
    //     builder: (context) => EditEmployeeScreen(
    //       employeeId: arguments.employeeId,
    //     ),
    //   );
    default:
      return MaterialPageRoute(
          settings: settings, builder: (context) => RestarentListScreen());
  }
}
