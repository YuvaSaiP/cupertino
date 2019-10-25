import 'package:flutter/material.dart';
import 'Splash_Screen.dart';
import 'mainscreen.dart';
var routes =<String,WidgetBuilder>
{
"/homescreen":(BuildContext context) =>HomeScreen(),
};

void main() => runApp(MaterialApp(
  title: "My Captures",
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
  routes: routes,
));

