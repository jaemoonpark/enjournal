import 'dart:async';
import 'package:enjournal/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class EntryCreationBloc extends Object with Validators{
  final _entryTitleController = BehaviorSubject<String>();
  final _entryBodyController = BehaviorSubject<String>();

  Function(String) get changeTitle => _entryTitleController.sink.add;
  Function(String) get changeBody => _entryBodyController.sink.add;

  Stream<String> get title => _entryTitleController.stream.transform(validateLength);
  // Stream<String> get body => _entryBodyController.stream.transform(validateLength);
  // Stream<bool> get saveValid => Observable.combineLatest2(title, body, (title, body) => true);


  save(){
    //TODO: encrypt file, save in db(autoid, title, pointer to enc(file))
    print("Validation passed!");
  }

  dispose(){
    _entryTitleController.close();
    _entryBodyController.close();
  }


}