import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newstore/Screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpOverrides.global=MyHttpOverrides();
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context) => HomeScreen()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     //
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
