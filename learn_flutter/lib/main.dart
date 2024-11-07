import 'package:flutter/material.dart';
import 'package:learn_flutter/screen/Daftarpage.dart';
import 'package:learn_flutter/screen/Formpage.dart';
import 'screen/Homepage.dart';
import 'screen/SplashScreen.dart';

 void main() {
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'My Aplication',
       initialRoute: '/',
       routes: {
         '/': (context) => SplashScreen(),
         '/homepage': (context) => Homepage(),
         '/form': (context) => FormPage(),
         '/daftar': (context) => Daftarpage(),
       },
     );
   }
 }


