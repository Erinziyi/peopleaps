import 'dart:async';

const String _pEmailRule = r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$";

class CompanyEmailValidators{
  final StreamTransformer<String,String>validateEmail =
      StreamTransformer<String,String>.fromHandlers(handleData: (email, sink){
  final RegExp emailExp = new RegExp(_pEmailRule);

  if (!emailExp.hasMatch(email) || email.isEmpty){
    sink.addError('Entre a valid email');
  } else {
    sink.add(email);
  }
      });

}















