import 'package:flutter/material.dart';
import './home.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Login First'),
      elevation: 5.0,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/aasd.jpg",),
            fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0,),
              Image.asset("img/asd.png", height: 100,),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  prefixIcon: Icon(Icons.alternate_email),
                  fillColor: Colors.white54,
                  filled: true
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.vpn_key),
                  fillColor: Colors.white54,
                  filled: true
                ),
              ),
              SizedBox(height: 20.0,),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  color: Theme.of(context).primaryColor,
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context)=>HomePage()
                    ));
                  },
                  child: Text("Login", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  )),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}