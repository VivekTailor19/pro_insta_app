import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.lock_outline_rounded, color: Colors.black),
        title: Text("Pro_Developer",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.add_box_outlined, color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.menu_rounded, color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/hacker.jpg"),
                  ),
                  Text(
                    "😎_flutter_dev_😎",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Info(10, "Posts"),
              Info(900, "Followers"),
              Info(10, "Following")
            ],
          ),  // Profile
          SizedBox(height: 5),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    width: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.black12),
                    child: Text("Edit profile",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.black12),
                    child: Icon(Icons.person_add_outlined,color: Colors.black,size: 20,),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker1.jpg')),
                  SizedBox(width: 10,),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker2.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker3.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker4.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker5.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker6.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker1.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker2.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker5.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker6.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker1.jpg')),
                  CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/hacker2.jpg')),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.grid_on_sharp),
              Icon(Icons.assignment_ind_outlined)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Photos("assets/images/insta10.jpg"),
                Photos("assets/images/insta5.jpg"),
                Photos("assets/images/insta4.jpg"),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Photos("assets/images/insta3.jpg"),
                Photos("assets/images/insta2.jpg"),
                Photos("assets/images/insta1.jpg"),
              ],),
          )


        ],
      ),
    );
  }

  Widget Info(int number, String name) {
    return Column(
      children: [
        Text("$number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("$name", style: TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget Photos(String iphoto)
  {
    return Container(
        height: 120,
        width: 120,
        child: Image.asset("$iphoto",fit: BoxFit.cover,),
        decoration: BoxDecoration(border: Border.all(color: Colors.lightBlueAccent.shade100,width: 2))
    );
  }

}
