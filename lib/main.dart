import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/fetures/current_location_screen.dart';
import 'package:untitled1/providers/current_location_provider.dart';
import 'constants/route_generator.dart' as router;
import 'constants/palette.dart';
import 'constants/router_constant.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CurrentLocationtProvider()),
      ],
      child: MaterialApp(
        color: Palette.primary,
        debugShowCheckedModeBanner: false,
        home: CurrentLocationScreen(),
        onGenerateRoute: router.generateRoute,
        initialRoute: RouterConstants.MainRoute,
      ),
    );
  }
}
