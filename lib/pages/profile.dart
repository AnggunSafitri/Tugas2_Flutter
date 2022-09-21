import 'dart:html';

import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';
import '../widgets/tab_item.dart';
import '../widgets/story_item.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key}) : super(key : key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text("Anggun Safitri", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              ),
              ),
              Icon(
                Icons.arrow_drop_down,
                 color: Colors.black,
                ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
           icon: Icon(
            Icons.add_box_outlined,
            color: Colors.black,
            ),
           ),
            IconButton(
            onPressed: () {},
           icon: Icon(
            Icons.menu,
            color: Colors.black,
            ),
           ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Postingan", "15"),
                      InfoItem("Pengikut", "884"),
                      InfoItem("Mengikuti", "586"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Anggun Safitri",
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
             ),
            ),
          ),
         SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText (
              text: TextSpan(
                text: "Akhirnya aku mampu berkata The Sunset is beautiful, is not it?  ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#galaubet",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
                ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Klik Disini", 
              style: TextStyle(
                color: Colors.blue,
                ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
               child: Text("Edit Profil"),
                ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Sorotan 1"),
                  StoryItem("Sorotan 2"),
                  StoryItem("Sorotan 3"),
                  StoryItem("Sorotan 4"),
                  StoryItem("Sorotan 5"),
                  StoryItem("Sorotan 6"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false),
              // Expanded(
              //   child: Icon(Icons.person_pin_outlined),
              //   ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://images.bisnis-cdn.com/thumb/posts/2021/09/22/1445401/bulan-purnama-biru2.jpg?w=400&h=400",
               fit: BoxFit.cover,
              ),
             ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
        label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
        label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_filter_rounded),
        label: "Movie",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_rounded),
        label: "Shop",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
        label: "Profile",
        ),
      ],
      ),
    );
  }
}




