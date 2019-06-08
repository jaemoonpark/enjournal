import 'dart:async';
import 'package:enjournal/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class EntryCreationBloc extends Object with Validators{
  final _entryTitleController = BehaviorSubject<String>();
  final _entryBodyController = BehaviorSubject<String>();

  Function(String) get changeTitle => _entryTitleController.sink.add;
  Function(String) get changePassword => _entryBodyController.sink.add;

  Stream<String> get title => _entryTitleController.stream.transform(validateLength);
  Stream<String> get body => _entryBodyController.stream.transform(validateLength);
  Stream<bool> get submitValid => Observable.combineLatest2(title, body, (title, body) => true);


  submit(){
    //TODO: encrypt file, save in db(autoid, title, pointer to enc(file))
    print("Validation passed!");
  }
}