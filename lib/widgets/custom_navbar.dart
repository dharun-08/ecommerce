import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(243, 9, 24, 45),
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              icon: Icon(Icons.person_3),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
