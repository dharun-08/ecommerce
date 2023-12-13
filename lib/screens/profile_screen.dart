import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppbar(),
      ),
      body: Text('Profile'),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
