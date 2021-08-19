import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/providers/restarent_list_provider.dart';
import 'package:untitled1/providers/single_restaurant_details_provider.dart';
import 'constants/route_generator.dart' as router;
import 'constants/palette.dart';
import 'constants/router_constant.dart';
import 'fetures/restarent_list_screen.dart';
import 'fetures/single_restarent_details_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RestaurantListProvider()),
        ChangeNotifierProvider(create: (context) => SingleRestaurantProvider()),
      ],
      child: MaterialApp(
        color: Palette.primary,
        debugShowCheckedModeBanner: false,
        home: RestarentListScreen(),
        onGenerateRoute: router.generateRoute,
        initialRoute: RouterConstants.MainRoute,
      ),
    );
  }
}
