import 'package:bus_tracking_system/screens/mainpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
      appId: '1:705663012113:ios:aefcd66e1a4e87152fd0b0',
      apiKey: 'AIzaSyDhMUMgOGCUbJilCety9DDZLMQRGBCf5kQ',
      projectId: 'bustrackingsystem-31e21',
      messagingSenderId: '705663012113',
      databaseURL: 'https://bustrackingsystem-31e21.firebaseio.com',
    )
        : FirebaseOptions(
      appId: '1:705663012113:android:9b3bd569df0473052fd0b0',
      apiKey: 'AIzaSyAsXHq-PBKkDOSJ7BeknY8h17DymdnKXug',
      messagingSenderId: '297855924061',
      projectId: 'bustrackingsystem-31e21',
      databaseURL: 'https://bustrackingsystem-31e21.firebaseio.com',
    ),
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}


