import 'package:flutter/material.dart';
import 'package:delivery/src/utils/my_colors.dart';
import 'package:delivery/src/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'delivery flutter',
      initialRoute: 'login',
      routes: {'login':(BuildContext context) => LoginPage()},
      theme: ThemeData(primaryColor: MyColors.primaryColor),
    );
  }
}


