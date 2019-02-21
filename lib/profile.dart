import 'package:flutter/material.dart';

  class ProfilePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Profile'),
        backgroundColor:(Colors.blueGrey)),
        body: Stack(
        children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 200.01,
                  width:400,
                  decoration:BoxDecoration(
                  image:DecorationImage(
                  
                  image: NetworkImage("https://img0.imguh.com/2019/01/31/FB_IMG_150511930948768fe19217bd1f17b.jpg"),

                 fit:BoxFit.fill),
                 boxShadow:<BoxShadow>[
                  BoxShadow(
                   color:Colors.blueGrey[300],
                   offset:Offset(4.0,15.0),
                   blurRadius:10.0
                   ),
                 ]
                 
                  
                )
                
                ),
                SizedBox(height:12.0,),
                Container(
               height:345,
               decoration:BoxDecoration(
                 color:Colors.blueGrey,                

               ),
               
             child: Center(child: Text("Ranjit Dangol",style:TextStyle(fontSize:35),),
             
             ),
                ),
              ]
            ),
        
        
        
            
            // Profile image
            Positioned(
              top: 150.0, 
            
              // (background container size) - (circle height / 2)
              child: Container(
                height: 100.0,
                width: 100.0,
               
                
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50.0),
                  border:Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  image: DecorationImage(image: NetworkImage("https://img0.imguh.com/2019/01/31/d9b651d42fb594de0.jpg"),),
                  boxShadow:<BoxShadow>[
                   BoxShadow(
                   color:Colors.blueGrey[100],
                   offset:Offset(1.0,5.0),
                   blurRadius:30.0
                   ),
                 ]
                ),
              
            ),
            )
        ]
        ),
      );
      
      
    }
  }