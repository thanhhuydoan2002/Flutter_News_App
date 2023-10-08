import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';
import 'package:news_app/view/splash.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash = true;

  loadHome(){
    Future.delayed(const Duration(seconds: 3), (){
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        loadHome();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Shockwave News",
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black87,),
          ),

          appBarTheme: const AppBarTheme(
            color: Colors.black87,
          ),
      ),

      home: showingSplash ? const SplashScreen() : const HomeScreen(),
    );
  }
}
