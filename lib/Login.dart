import 'package:flutter/material.dart';
import './home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  bool showError = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login First'),
       // elevation: 5.0,
     // ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "img/aasd.jpg",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text("Photo Login",style: TextStyle(fontSize: 30,color: Colors.black87,  ),textAlign: TextAlign.center,),
            
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                "img/asd.png",
                height: 100,
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 10,
              ),
              _buildEmailField(),
              SizedBox(
                height: 20.0,
              ),
              _buildPasswordField(),
              SizedBox(
                height: 20.0,
              ),
              _buildLoginButton(context),
              showError
                  ? Text(
                      'Invalid email or password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          if (email == "admin" && password == "admin") {
            setState(() {
              showError = false;
            });
            
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context) => HomePage()));     
          } 
          else{
            setState(() {
              showError = true;
            });
          }
        },
        child: Text("Login",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
      ),
    );
  }

  TextField _buildPasswordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Password",
          prefixIcon: Icon(Icons.vpn_key),
          fillColor: Colors.white54,
          filled: true),
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
    );
  }

  TextField _buildEmailField() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Email",
          prefixIcon: Icon(Icons.alternate_email),
          fillColor: Colors.white54,
          filled: true),
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
    );
  }
}
