import 'package:flutter/material.dart';
import 'entry_creation_bloc.dart';

class EntryCreationProvider extends InheritedWidget{
  final bloc = EntryCreationBloc();
  
  EntryCreationProvider({Key key, Widget child}) : super(key:key, child: child);

  bool updateShouldNotify(_) => true;

  static EntryCreationBloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(EntryCreationProvider) as EntryCreationProvider).bloc;
  }
}