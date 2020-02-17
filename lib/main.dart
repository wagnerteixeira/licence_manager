import 'package:flutter/material.dart';

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import './components/home_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnv().load('.env');

  final FirebaseApp app = await FirebaseApp.configure(
    name: 'teste',    
    options:FirebaseOptions(
      googleAppID: DotEnv().env['googleAppID'],
      gcmSenderID: DotEnv().env['gcmSenderID'],
      apiKey: DotEnv().env['apiKey'],
      projectID: DotEnv().env['projectID'],
    )
  );  
  final Firestore firestore = Firestore(app: app);  
  runApp(MyApp(firestore: firestore));
}

class MyApp extends StatelessWidget {
  MyApp({this.firestore});

  final Firestore firestore;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Licence Manager',
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
      ),
      home: HomePage(title: 'Licence Manager', firestore: firestore,),
    );
  }
}
