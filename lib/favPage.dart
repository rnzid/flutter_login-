import 'package:flutter/material.dart';
import './home.dart';
import './login.dart';
import './list.dart';
import './About.dart';

class FavPage extends StatelessWidget {
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
      title: Text("Favourite List"),
    ),
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ranjit dangol"),
            accountEmail: Text("ranjitdangol13@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.green,
            child: Text('R'),),
            
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

    body:ListView( 
       children: <Widget>[
         Image.asset("img/b.jpg",
         fit: BoxFit.cover,),
         titlesection,
         Text("Newari beauty                 March 02", style: TextStyle(fontSize: 15.0),),
       ],
    )
    );
  }
}
