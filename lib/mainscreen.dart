import 'package:flutter/material.dart';
import 'MoreScreen.dart';
import 'settings_page.dart';
class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      checkerboardOffscreenLayers: false,
      debugShowCheckedModeBanner: false,
      title: "My Clicks",
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Photos",style: TextStyle(color: Colors.red),),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  color: Colors.white,
                ),
                // SizedBox(width: 18.0,),
                IconButton(
                  onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreWidget()));
                  },
                  icon: Icon(Icons.more_vert),
                  iconSize: 30.0,
                  color: Colors.white,
                ),
              ],
            ),  
          ],
        ),
        drawer: new Drawer(
          elevation: 20.0,
      child:new my_drawer(
        email: "snehysumanth@gmail.com",
        name: "Sumanth",
        profileimg: "assets/images/icon2.png",
        background: "assets/images/bean.gif",
      )
    ),
        body:SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Container(
               margin: EdgeInsets.all(10.0),
             ),
             CardView("Lorem Ipsum Dorem", "assets/images/mine1.jpg"),
             //CardView("Style Reflects You", "assets/images/mine3.jpeg"),
             CardView("Lorem Ipsum Dorem", "assets/images/post2.jpg"),
             CardView("Lorem Ipsum Dorem", "assets/images/mine2.jpg"),
             CardView("Lorem Ipsum Dorem", "assets/images/puck.gif"),
             CardView("Lorem Ipsum Dorem", "assets/images/post1.jpg"),
             CardView("Lorem Ipsum Dorem", "assets/images/sumanth.jpg"),
           ], 
        ),
      ),
      ),
    );
  }
}
class CardView extends StatelessWidget {
  final String text1;
  final String image1;
  const CardView(this.text1,this.image1);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
                 children: <Widget>[
                   Image.asset(image1),
                   Padding(padding: EdgeInsets.all(2.0),),
                   Text(text1,
                   style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "QuickSand",
                    fontWeight: FontWeight.bold,
                   ),
                   ),
                   IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.share),
                       color: Colors.blue,
                     ),
                 ],
               ),
    );
  }
}

class my_drawer extends StatelessWidget {
   String email,name,profileimg,background;

my_drawer({this.background,this.profileimg,this.name,this.email});

   @override
   Widget build(BuildContext context) {
     return  ListView(
       padding: EdgeInsets.zero,
        children: <Widget>[
           UserAccountsDrawerHeader(
            accountEmail:  Text(email,style: TextStyle(color: Colors.white),),
            accountName:   Text(name,style: TextStyle(color: Colors.white,fontFamily: "QuickSand",fontWeight: FontWeight.bold),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(profileimg),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(profileimg),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(profileimg),
              ),
            ],
            decoration:  BoxDecoration(
              image:  DecorationImage(
                image:  AssetImage(background),
                fit: BoxFit.cover
              )
            ),
          ),
           ListTile(
            title:  Text("Home"),
            trailing:  Icon(Icons.home,color: Colors.pink),
            onTap: (){},
          ),
            ListTile(
            title:  Text("Explore"),
            trailing:  Icon(Icons.notifications,color: Colors.purpleAccent),
            onTap: (){print("Notification");},
          ),
          ListTile(
            title:  Text("Dark Mode"),
            trailing:  Icon(Icons.add_circle_outline,color: Colors.green),
            onTap: (){},
          ),
            ListTile(
            title:  Text("Notification"),
            trailing:  Icon(Icons.beach_access,color: Colors.red),
            onTap: (){print("Notification");},
          ),
           ListTile(
            title:  Text("Settings"),
            trailing:  Icon(Icons.settings,color: Colors.black,),
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage())); },
          ),
            ListTile(
            title:  Text("Exit"),
            trailing:  Icon(Icons.exit_to_app,color: Colors.deepOrange),
            onTap: (){Navigator.pop(context);},
          ),
        ],
      );
   }
}







