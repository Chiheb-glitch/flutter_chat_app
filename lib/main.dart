import 'package:chat_app/chat_app/views/pages/chat_page.dart';
import 'package:chat_app/chat_app/views/pages/details_chat_page.dart';
import 'package:chat_app/chat_app/views/pages/images_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle( 
            statusBarColor: Colors.green, 
            systemNavigationBarColor: Color(0xff282d41),
            systemNavigationBarDividerColor: Color(0xff282d41)
      )); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
        theme: ThemeData(

    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      backgroundColor: Colors.blue, // Change this to your desired color

      selectedItemColor: const Color.fromARGB(255, 201, 10, 10), // Change this to your desired color

      unselectedItemColor: const Color.fromARGB(255, 102, 28, 28), // Change this to your desired color

    ),

    // Other theme properties go here

  ),
     // home:  Chat_Page(),
     home:Chat_Page(),
    );
  }
}
