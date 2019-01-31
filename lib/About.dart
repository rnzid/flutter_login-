import 'package:flutter/material.dart';
import './home.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return new Material(
      color: Colors.teal.shade300,
      child: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  new Text(" Photos", 
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0),),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(" version 1.4", 
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0),),

                    
                    ],
                  ),
               RaisedButton(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Text("Back Button"),
            color: Colors.blue,
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage())),
          ),
          IconButton(
            color: Colors.deepPurple,
            iconSize: 40.0,
            icon: Icon(Icons.headset),
            onPressed: (){
              print("Icon button pressed");
            },
          ),
          ],
        )
        )
    );
  }

}