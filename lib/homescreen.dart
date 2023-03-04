import 'package:flutter/material.dart';

import 'instascreen.dart';
import 'likescreen.dart';
import 'profilescreen.dart';
import 'searchscreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int i = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: Container(
              height: 50,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(onTap: () {
                    setState(() {
                      i = 0;
                    });
                  },
                      child: Icon(Icons.home_sharp)),
                  InkWell(onTap: () {
                    setState(() {
                      i = 1;
                    });
                  },
                      child: Icon(Icons.search)),
                  InkWell(onTap: () {
                    setState(() {
                      i = 2;
                    });
                  },
                      child: Icon(Icons.favorite_outline_rounded)),
                  InkWell(onTap: () {
                    setState(() {
                      i = 3;
                    });
                  },
                      child: Icon(Icons.person_outline_rounded)),
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: IndexedStack(
                    index: i,
                    children: [
                      Insta_Screen(),
                      SearchScreen(),
                      Like_Screen(),
                      Profile_Screen(),
                      // home search like profile
                    ],
                  ),
                ),
              ],
            )

        )
    );
  }
}
