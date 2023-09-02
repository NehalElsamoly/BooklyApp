import 'package:booklyapp/features/presentations/viwes_model/viwes/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:const Color(0xff100B20),
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ,//عشان هوه الديفولت بتاعه بياخد من الليت ف التيكست كده هيبقي اسود

      ),

        //src="//getbookly.com/wp-content/uploads/2018/02/bookly2@3x.png"
     debugShowCheckedModeBanner: false,
      home: const Splash_Screen(),
    );
  }
}



