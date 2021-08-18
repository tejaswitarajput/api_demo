import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants/router_constant.dart';
import 'package:untitled1/fetures/current_location_screen.dart';
import 'package:untitled1/fetures/restarent_list_screen.dart';
import 'package:untitled1/fetures/single_restarent_details_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  var arguments;

  switch (settings.name) {
    case RouterConstants.MainRoute:
      return MaterialPageRoute(
          settings: settings, builder: (context) => CurrentLocationScreen());

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
          settings: settings, builder: (context) => CurrentLocationScreen());
  }
}

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     // Getting arguments passed in while calling Navigator.pushNamed
//     final args = settings.arguments;
//
//     switch (settings.name) {
//       case '/':
//       // return MaterialPageRoute(builder: (_) => LoginScreen());
//       case '/home_screen':
//       // Validation of correct data type
//         if (args is String) {
//           return MaterialPageRoute(
//             builder: (_) => HomeScreen(
//               // data: args,
//             ),
//           );
//         }
//
//         // If args is not of the correct type, return an error page.
//         // You can also throw an exception while in development.
//         return _errorRoute();
//       default:
//       // If there is no such named route in the switch statement, e.g. /third
//         return _errorRoute();
//     }
//   }
//
//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Error'),
//         ),
//         body: Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }

// class EmployeeArgument {
//   String employeeId;
//
//   EmployeeArgument({this.employeeId});
// }
