import 'dart:ui';

import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/home_image.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1 , sigmaY:1),
              child: Container(
                color: Colors.white.withOpacity(.123),
              ),
            ),
          )
        ],
      ),
    );
  }
}
