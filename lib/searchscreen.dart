import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search "Enter Text"',
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.black54),
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta6.jpg"),
                    Photos("assets/images/insta7.jpg"),
                    Photos("assets/images/insta8.jpg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta15.jpg"),
                    Photos("assets/images/insta14.jpg"),
                    Photos("assets/images/insta9.jpg"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta11.jpg"),
                    Photos("assets/images/insta12.jpg"),
                    Photos("assets/images/insta13.jpg"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta10.jpg"),
                    Photos("assets/images/insta5.jpg"),
                    Photos("assets/images/insta4.jpg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta3.jpg"),
                    Photos("assets/images/insta2.jpg"),
                    Photos("assets/images/insta1.jpg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/hacker.jpg"),
                    Photos("assets/images/hacker5.jpg"),
                    Photos("assets/images/hacker4.jpg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/hacker1.jpg"),
                    Photos("assets/images/hacker2.jpg"),
                    Photos("assets/images/hacker3.jpg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta8.jpg"),
                    Photos("assets/images/insta7.jpg"),
                    Photos("assets/images/insta6.jpg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta10.jpg"),
                    Photos("assets/images/insta9.jpg"),
                    Photos("assets/images/insta8.jpg"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta11.jpg"),
                    Photos("assets/images/insta12.jpg"),
                    Photos("assets/images/insta13.jpg"),

                  ],),


              ],)
            ],
          ),
        ),
      ),
    );
  }

  Widget Photos(String iphoto)
  {
    return Container(
        height: 110,
        width: 110,
        child: Image.asset("$iphoto",fit: BoxFit.cover),
        decoration: BoxDecoration(border: Border.all(color: Colors.lightBlueAccent.shade100,width: 2))
    );
  }

}

/*


* */