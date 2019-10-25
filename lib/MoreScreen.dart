import 'mainscreen.dart';
import 'package:flutter/material.dart';
class MoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xff2EBA4E),Color(0xffDC7677)],
                begin: Alignment.centerLeft,
                end: Alignment.topCenter
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 75.0,
                  child: Icon(Icons.beach_access,color: Colors.orange,size: 120.0,),
                ),
                MergeSemantics(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Text("Click",style: TextStyle(fontWeight: FontWeight.bold,)),
                    elevation: 8.0,
                    color: Colors.red,
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}