import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/round_info_container.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home_image.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                color: Colors.white.withOpacity(.123),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 22.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.6),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'NEW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'FULL - BODY KILLER\nWORKOUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     RoundInfoContainer(
                      title: '26',
                      subtitle: 'Minutes',
                    ),
                    _divider(),
                    RoundInfoContainer(
                      title: '3',
                      subtitle: 'Rounds',
                    ),
                    _divider(),
                    RoundInfoContainer(
                      title: 'EASY',
                      subtitle: 'Level',
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      width: 1.2,
      height: 35,
      color: Colors.white.withOpacity(.6),
    );
  }
}