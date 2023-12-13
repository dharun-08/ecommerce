import 'package:equatable/equatable.dart';
// import 'package:flutter_ecommerce/assets';

class Category extends Equatable {
  final String name;
  final String imgURl;

  const Category({
    required this.name,
    required this.imgURl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imgURl];

  static List<Category> categories = [
    const Category(name: "Beer", imgURl: 'https://images.unsplash.com/photo-1534057308991-b9b3a578f1b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
    const Category(name: "Shake", imgURl: 'https://images.unsplash.com/photo-1502741224143-90386d7f8c82?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
    const Category(name: "Bottle", imgURl: 'https://images.unsplash.com/photo-1559839914-17aae19cec71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
    const Category(name: "TV", imgURl: "https://5.imimg.com/data5/SELLER/Default/2022/4/WJ/MZ/DX/29094786/led-tv-smart-android.png"),
  ];
}
