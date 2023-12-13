import 'package:equatable/equatable.dart';
// import 'package:flutter_ecommerce/assets';

class Product extends Equatable {
  final String name;
  final String imgURl;

  const Product({
    required this.name,
    required this.imgURl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imgURl];

  static List<Product> product = [
    const Product(
        name: "Fourth Wing",
        imgURl:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1666994927i/61431922.jpg'),
    const Product(
        name: "AC",
        imgURl:
            'https://cdn1.epicgames.com/offer/9bcf5a4dc1d54cb6ab1a42f3a70c5cf4/Share_Image_1920x1080_1920x1080-3ec6b92b109d6ebe190c7fd8da23b989'),
    const Product(
        name: "Elden Ring",
        imgURl:
            'https://image.api.playstation.com/vulcan/ap/rnd/202108/0410/2odx6gpsgR6qQ16YZ7YkEt2B.png'),
    const Product(
        name: "TV",
        imgURl:
            "https://5.imimg.com/data5/SELLER/Default/2022/4/WJ/MZ/DX/29094786/led-tv-smart-android.png"),
  ];
}
