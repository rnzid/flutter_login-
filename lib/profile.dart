import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(backgroundImage: NetworkImage("https://img0.imguh.com/2019/01/31/d9b651d42fb594de0.jpg",),),
            Text("Ranjit dangol")   
          ],
        ),
      ),
    );
  }
}