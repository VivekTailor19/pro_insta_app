import 'package:flutter/material.dart';

import 'homescreen.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        "/" : (context) => HomeScreen(),
      },
    ),
  );
}
