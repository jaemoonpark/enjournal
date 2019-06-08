import 'dart:async';

class Validators{
  //ensuring texts are not null
  final validateLength = StreamTransformer<String, String>.fromHandlers(
    handleData: (String txt, EventSink<String> sink){
      if(txt == null || txt.length == 0) sink.addError("Please enter in text.");
      else sink.add(txt);
    }
  );
}