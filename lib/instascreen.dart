import 'package:flutter/material.dart';

class Insta_Screen extends StatefulWidget {
  const Insta_Screen({Key? key}) : super(key: key);

  @override
  State<Insta_Screen> createState() => _Insta_ScreenState();
}

List photo = [
  "images/insta1.jpg",
  "images/insta2.jpg",
  "images/insta3.jpg",
  "images/insta4.jpg",
  "images/insta5.jpg",
  "images/insta6.jpg",
  "images/insta7.jpg",
  "images/insta8.jpg",
  "images/insta9.jpg",
  "images/insta10.jpg",
  "images/insta11.jpg",
  "images/insta12.jpg",
  "images/insta13.jpg",
  "images/insta14.jpg",
  "images/insta15.jpg",
];

class _Insta_ScreenState extends State<Insta_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Instagram", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.black45),),
        actions: [Icon(Icons.add_box_outlined,color: Colors.black45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.chat_outlined,color: Colors.black45),
          )],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Post("assets/images/insta1.jpg"),
            Post("assets/images/insta2.jpg"),
            Post("assets/images/insta3.jpg"),
            Post("assets/images/insta10.jpg"),
            Post("assets/images/insta12.jpg"),
            Post("assets/images/insta13.jpg"),
            Post("assets/images/insta8.jpg"),
            Post("assets/images/insta7.jpg"),
            Post("assets/images/insta1.jpg"),
            Post("assets/images/hacker1.jpg"),
            Post("assets/images/hacker2.jpg"),
            Post("assets/images/insta13.jpg"),

            // Post(photo[1]),
            // Post(photo[2]),
          ],
        ),
      ),
    );
  }

  Widget Post(String iphoto)
  {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("$iphoto",width: 250,height: 250,fit: BoxFit.contain,),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border_rounded,size: 30),
                  ),
                  Icon(Icons.add_comment_outlined,size: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.near_me_outlined,size: 30),
                  )
                ],
              ),
              Icon(Icons.bookmark_border_outlined,size: 30)
            ],
          ),
        )
      ],

    );
  }

}
