import 'package:flutter/material.dart';
import 'package:todo_app/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        drawerTheme: DrawerThemeData(backgroundColor: Colors.amber),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              //textStyle: MaterialStateProperty.all<Color>(Colors.black),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        ),
        dividerTheme: DividerThemeData(color: Colors.black),

        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.amberAccent),
        scaffoldBackgroundColor: Colors.amber,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme.copyWith(
              bodyText1: TextStyle(color: Colors.black, fontSize: 20),
              bodyText2: TextStyle(color: Colors.grey[600], fontSize: 15),
              headline1: TextStyle(color: Colors.black, fontSize: 15),
              headline2: TextStyle(color: Colors.black, fontSize: 25)),
        ),
        //bottomNavigationBarTheme: BottomNavigationBarTheme,

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 25,
          ),
          backgroundColor: Colors.amberAccent,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.black,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              // textStyle: MaterialStateProperty.all<Color>(Colors.black),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        ),
        dividerTheme: DividerThemeData(color: Colors.white),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.white),

        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme.copyWith(
              headline1: TextStyle(color: Colors.white, fontSize: 15),
              bodyText1: TextStyle(color: Colors.black, fontSize: 20),
              bodyText2: TextStyle(color: Colors.grey, fontSize: 15),
              headline2: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        //bottomNavigationBarTheme: BottomNavigationBarTheme,

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 25,
          ),
          backgroundColor: Colors.black,
        ),
      ),
      themeMode: ThemeMode.system,
      home: HomeView(),
    );
  }
}
