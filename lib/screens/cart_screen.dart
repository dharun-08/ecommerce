import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppbar(),
      ),
      body: Text('Cart'),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
