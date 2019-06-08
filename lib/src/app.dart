import 'package:enjournal/src/screens/entry_create.dart';
import 'package:flutter/material.dart';
import 'blocs/entry_creation_provider.dart';
class App extends StatelessWidget{

  Widget build(context){
    return EntryCreationProvider(
      child: MaterialApp(
      title: 'Enjournal',
      home: Scaffold(
        body: EntryCreate(),
      ),
      )
    );
  }
}