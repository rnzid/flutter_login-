import 'package:flutter/material.dart';
import './login.dart';
import './list.dart';
import './favPage.dart';
import './profile.dart';
import './About.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titlesection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("photography", style: TextStyle(fontWeight: FontWeight.bold),),
                
              ],
            ),
          ),
          Icon(Icons.favorite, color: Colors.red,),
          Text("100", style: TextStyle(fontSize: 14),)
        ],
      ),
    );
      return Scaffold(
      appBar: AppBar(
      title: Text("Home"),
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
            title: Text("Home page"),
            trailing: Icon(Icons.home),
           onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()))
          ),
          Divider(),
          ListTile(
            title: Text("List"),
            trailing: Icon(Icons.list),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ListPage()))
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
               }
          ),
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

    body: ListView( 
       children: <Widget>[
         Image.asset("img/a.jpg",
         fit: BoxFit.cover,),
         titlesection,
         Text("And the end of day             jan 22", style: TextStyle(fontSize: 15.0),),
         Divider(),
         Image.asset("img/b.jpg", fit: BoxFit.cover,),
         titlesection,
         Text("Newari beauty                 March 02", style: TextStyle(fontSize: 15.0),),
         Divider(),
         Image.asset("img/c.jpg", fit: BoxFit.cover,),
         titlesection,
         Text("Nature love                  april 12", style: TextStyle(fontSize: 15.0),),
       ],
    )
  );
  }
}