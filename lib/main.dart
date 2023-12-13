import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/app_router.dart';
import 'package:flutter_ecommerce/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Ecommerce app',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}

