import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/category_model.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/widgets/widgets.dart';

import '../widgets/product_carusole.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    //list of widget

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppbar(),
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: ListView(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarusoleCard(category: category))
                  .toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Recommendation',
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Product.product
                  .map(
                    (product) => ProductCarusole(
                      product: product
                    )
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
