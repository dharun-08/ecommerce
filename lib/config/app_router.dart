import 'package:flutter/material.dart';
// import 'package:flutter_ecommerce/screens/cart_screen.dart';
import 'package:flutter_ecommerce/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route:${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case '/user':
        return ProfileScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ));
  }
}
