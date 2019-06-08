import 'package:enjournal/src/screens/entry_create.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{

  Widget build(context){
    return MaterialApp(
      title: 'Bankrupt',
      home: Scaffold(
        body: EntryCreate(),
      ),
      
    );
  }
}