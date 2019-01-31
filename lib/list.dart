import 'package:flutter/material.dart';
import './home.dart';
import './login.dart';
import './favPage.dart';
import './About.dart';
import './profile.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: Text("List"),
    ),
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ranjit dangol"),
            accountEmail: Text("ranjitdangol13@gmail.com"),
            decoration: BoxDecoration
            (image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://img0.imguh.com/2019/01/31/FB_IMG_150511930948768fe19217bd1f17b.jpg"))),
            currentAccountPicture: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfilePage())),
              child: CircleAvatar(backgroundImage: NetworkImage("https://img0.imguh.com/2019/01/31/d9b651d42fb594de0.jpg"),),
            ),
            
          ),
          
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
          onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context)=>HomePage()  
               ) 
               );
               }
          ),
          Divider(),
          ListTile(
            title: Text("List"),
            trailing: Icon(Icons.list),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context)=>ListPage()  
               ) 
               );
               }
          ),
          Divider(),
          ListTile(
            title: Text("Favorite"),
            trailing: Icon(Icons.star_border),
          
          onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context)=>FavPage()  
               ) 
               );
               }),
          Divider(),
          ListTile(
            title: Text("About us"),
            trailing: Icon(Icons.contacts),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AboutPage()))
          ),
          Divider(),
          ListTile(
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context)=>LoginPage()  
               ) 
               );
               }
          ),
          Divider(),
        ],
      )
    ),

    body: Container(
      child: ListView.builder(itemBuilder: (_,int index)=>Eachlist(),
      itemCount: 20,),
    )
      
    );
  }
}
class Eachlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(6.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(backgroundImage: NetworkImage("https://img0.imguh.com/2019/01/31/d9b651d42fb594de0.jpg"),
            ),
            Padding(padding: EdgeInsets.only(right: 10.0),),
          Text("Rn zid")
          ],
        ),
      ),
      
    );
  }
}