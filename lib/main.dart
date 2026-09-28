import 'package:blogclub/data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:blogclub/splash.dart';
import 'package:blogclub/MyHomePage.dart';

//import 'carousel/carousel_slider.dart';
//import 'carousel/carousel_options.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Avenir",
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 20, color: Color(0xff2D4379)),
          headlineLarge: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            color: Color(0xdd376AED),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
      //Stack(
      //   children: [
      //     Positioned.fill(child: MyHomePage()),
      //     Positioned(bottom: 0, right: 0, left: 0, child: _Buttomnavi()),
      //   ],
      // ),
    );
  }
}

class _Buttomnavi extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black)],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NavigationButtonList(
                      imgname: "Home.png",
                      title: "Home",
                      istap: true,
                    ),
                    NavigationButtonList(
                      imgname: "Articles.png",
                      title: "Articles",
                      istap: false,
                    ),
                    SizedBox(width: 30),
                    NavigationButtonList(
                      imgname: "Search.png",
                      title: "Search",
                      istap: false,
                    ),
                    NavigationButtonList(
                      imgname: "Menu.png",
                      title: "Menu",
                      istap: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 65,
              height: 90,
              alignment: Alignment.topCenter,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Image.asset(
                  "assets/img/navibar/plus.png",
                  width: 10,
                  height: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationButtonList extends StatelessWidget {
  final imgname;
  final title;
  final istap;
  const new({
    super.key,
    required this.imgname,
    required this.title,
    required this.istap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/img/navibar/$imgname"),
        Text(title, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
