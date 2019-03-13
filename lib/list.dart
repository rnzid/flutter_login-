import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './home.dart';
import './login.dart';
import './favPage.dart';
import './About.dart';
import './profile.dart';

class ListPage extends StatelessWidget {
   _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("LOGOUT"),
          content: Text("Are you sure you want to logout?"),
          actions: <Widget>[
            FlatButton(
              child: Text("Yes"),
              onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context)=>LoginPage()  
               ) 
               );}
            ),
            FlatButton(
              child: Text("No"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    barrierDismissible: false,
    );
  }
  Future<List> getUsers() async {
    http.Response res = await http.get('https://jsonplaceholder.typicode.com/users');
    return  json.decode(res.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: Text("List View From json"),
    ),
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          _buildAccountDrawerHead(context),
          
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
            onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => AboutPage()))
          ),
          Divider(),
          ListTile(
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_back),
            onTap: () => _showDialog(context),
          ),
          Divider(),
        ],
      )
    ),

    body: FutureBuilder(
        future: getUsers(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          if(!snapshot.hasData) return CircularProgressIndicator();
          List users = snapshot.data;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              var user = users[index];
              return ListTile(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ItemDetails(user:user))),
                isThreeLine: true,
                title: Text(user["name"]),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(user["email"]),
                    SizedBox(height: 5,),
                    Text(user["phone"]),
                  Divider(color: Colors.black87,)
                  ],
                ),
              );
            },
          );
        },
      ),
    

      
    );
  }

  UserAccountsDrawerHeader _buildAccountDrawerHead(BuildContext context) {
    return UserAccountsDrawerHeader(
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
class ItemDetails extends StatelessWidget {
  final Map user;

  const ItemDetails({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user["name"]),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(user["name"], style: Theme.of(context).textTheme.display1,),
            Text(user['email']),
            SizedBox(height: 20.0,),
            Text( "Username: ${user['username']}"),
            SizedBox(height: 10.0,),
            Text( "Phone: ${user['phone']}"),
            SizedBox(height: 10.0,),
            Text( "Website: ${user['website']}"),
          ],
        ),
      ),
    );
  }
}