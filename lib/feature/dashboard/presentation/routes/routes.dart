import 'package:flutter/cupertino.dart';

import '../pages/home.dart';

class Routes {
  static const String home = '/';


  static const initialRoute = home;

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const Dashboard(),
  };

}