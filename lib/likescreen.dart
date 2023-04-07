import 'package:flutter/material.dart';

class Like_Screen extends StatefulWidget {
  const Like_Screen({Key? key}) : super(key: key);

  @override
  State<Like_Screen> createState() => _Like_ScreenState();
}

class _Like_ScreenState extends State<Like_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Notifications",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ],),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: Icon(Icons.person_add_outlined,size: 30),
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black)),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Follow requests", style: TextStyle(fontSize: 18)),
                          Text("Approve or ignore requests",style: TextStyle(fontSize: 14,color: Colors.black26)),
                        ],
                  ),),
                ],),
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Notes("Viren", "Modi", 10, "assets/images/hacker1.jpg"),
                  Notes("You", "Amit", 50, "assets/images/insta2.jpg"),
                  Notes("Jeet", "Rahul", 1000, "assets/images/hacker3.jpg"),
                  Notes("Rahul", "Virat", 60, "assets/images/insta4.jpg"),
                  Notes("Raghav", "Dhoni", 50, "assets/images/hacker5.jpg"),
                  Notes("Viren", "Viral", 950, "assets/images/insta6.jpg"),
                  Notes("Vidit", "Patel", 70, "assets/images/hacker.jpg"),
                  Notes("Viren", "Modi", 10, "assets/images/insta11.jpg"),
                  Notes("You", "Amit", 50, "assets/images/insta12.jpg"),
                  Notes("Jeet", "Rahul", 1000, "assets/images/insta9.jpg"),
                  Notes("Rahul", "Virat", 60, "assets/images/insta14.jpg"),
                  Notes("Raghav", "Dhoni", 50, "assets/images/hacker.jpg"),
                  Notes("Viren", "Viral", 950, "assets/images/insta15.jpg"),
                  Notes("Vidit", "Patel", 70, "assets/images/hacker5.jpg"),
                  Notes("Rahul", "Virat", 60, "assets/images/insta4.jpg"),
                ],
              ),

            ],

          ),
        ),
      ),


    );
  }

  Widget Notes( String person1, String person2, int no, String iphoto)
  {
    return Container(
      height: 70,
      child: Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "$iphoto",
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 15),
          RichText(text: TextSpan(children: [
            TextSpan(text: "$person1 , $person2  & $no",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue)),
            TextSpan(text: " others liked your photo.",style: TextStyle(fontSize: 11,color: Colors.black)),
          ],))
        ],
      ),
    );
  }
}
