
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'license_list.dart';


class HomePage extends StatelessWidget {
  HomePage({Key key, this.title, this.firestore}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final Firestore firestore;

  //CollectionReference get releases => firestore.collection('releases');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('License Manager'),        
      ),
      body: LicenseList(firestore: firestore),/*
      floatingActionButton: FloatingActionButton(
        //onPressed: _addMessage,
        tooltip: 'Adicionar Cliente',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}