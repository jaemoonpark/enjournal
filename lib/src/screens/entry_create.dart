import 'package:flutter/material.dart';

class EntryCreate extends StatelessWidget{
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: widgetAppBarTitle(),
        actions: widgetAppBarActions(),
      ),
      body: widgetEntryBody(),
    );
  }
  
  List<Widget> widgetAppBarActions(){
    return <Widget>[
      IconButton(
        icon: Icon(Icons.save),
        onPressed: (){

        },
      )
    ];
  }
  

  Widget widgetAppBarTitle(){
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Title: '
      ),
    );
  }

  Widget widgetEntryBody(){
    return TextField(
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Write here!'
      ),
    );
  }
}