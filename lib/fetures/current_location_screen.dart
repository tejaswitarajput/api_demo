import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/models/current_address_module.dart';
import 'package:untitled1/providers/current_location_provider.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key key}) : super(key: key);

  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  CurrentAddressModule address = CurrentAddressModule();
  @override
  void initState() {
    var currentProvider =
        Provider.of<CurrentLocationtProvider>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      address = await CurrentLocationtProvider.currentAddressData();
// executes after build
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
