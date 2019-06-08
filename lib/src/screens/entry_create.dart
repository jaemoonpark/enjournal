import 'package:flutter/material.dart';
import '../blocs/entry_creation_provider.dart';
class EntryCreate extends StatelessWidget{

  Widget build(context){
    final entryCreationBloc = EntryCreationProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: widgetAppBarTitle(entryCreationBloc),
        actions: widgetAppBarActions(entryCreationBloc),
      ),
      body: widgetEntryBody(entryCreationBloc),
    );
  }
  
  List<Widget> widgetAppBarActions(EntryCreationBloc entryCreationBloc){
    return <Widget>[
        widgetAppBarSaveBtn(entryCreationBloc),
    ];
  }

  Widget widgetAppBarSaveBtn(EntryCreationBloc entryCreationBloc){
    return StreamBuilder(
      stream: entryCreationBloc.saveValid,
      builder: (context, snapshot){
        return IconButton(
        icon: Icon(Icons.save),
        onPressed: snapshot.hasData ? entryCreationBloc.save : null,
        );
      },
    );
  }
  

  Widget widgetAppBarTitle(EntryCreationBloc entryCreationBloc){
    return StreamBuilder(
      stream: entryCreationBloc.title,
      builder: (context, snapshot){
        return TextField(
          onChanged: entryCreationBloc.changeTitle,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Title: ',
            errorText: snapshot.error,
          ),
        );
      }
    );
    
  }

  Widget widgetEntryBody(EntryCreationBloc entryCreationBloc){
    return StreamBuilder(
      stream: entryCreationBloc.body,
      builder: (context, snapshot){
        return TextField(
          onChanged: entryCreationBloc.changeBody,
          maxLines: null,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Write here!',
            errorText: snapshot.error,
          ),
        );
      }

    );
    
  }
}