import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(243, 9, 24, 45),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: Title(
            color: Colors.white,
            child: const Text(
              'Ecommerce',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            )),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 30.0, 0.0),
        )
      ],
    );
  }
}
