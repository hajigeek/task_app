// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_app/screens/home/widgets/go_premuim.dart';
import 'package:task_app/screens/home/widgets/tasks.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Expanded(
            child: Tasks(),
          )
        ],
      ),

      //bottomNavigation
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add_rounded, size: 35),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      //ignore shadow
      elevation: 0,
      title: Row(
        children: [
          //the avatar container
          Container(
              height: 45,
              width: 45,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/AvatarMaker.png'))),
          SizedBox(
            width: 10,
          ),
          Text(
            'Hi, Haji Ali',
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),

          //more icon
        ],
      ),

      //more icon here
      //this action uses as the last one after the row and
      //uses as trailing

      actions: [Icon(Icons.more_vert, color: Colors.black, size: 40)],
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),

// ignore: prefer_const_literals_to_create_immutables
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, size: 30), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded, size: 30), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
