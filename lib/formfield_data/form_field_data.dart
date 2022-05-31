import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextFormFieldData extends ChangeNotifier{
  bool secureText1=false;
  bool secureText2=false;
  TextFormField getTextFormFieldForPassword(TextEditingController editingController,String textName, String secureText){
    if(secureText=="secureText1")
      {
        return TextFormField(
          obscureText: secureText1,
          decoration: getInputDecorationForPassword(textName,secureText),
          autocorrect: false,
          textInputAction: TextInputAction.next,
          autofocus: false,
          keyboardType: TextInputType.text,
          controller: editingController,
        );
      }
    else {
      return TextFormField(
        obscureText: secureText2,
        decoration: getInputDecorationForPassword(textName,secureText),
        autocorrect: false,
        textInputAction: TextInputAction.next,
        autofocus: false,
        keyboardType: TextInputType.text,
        controller: editingController,
      );
    }

  }
  InputDecoration getInputDecorationForPassword(String textName,String secureText){
    if(secureText=="secureText1")
      {
        return InputDecoration(
          suffixIcon: IconButton(
            onPressed: (){
              secureText1=!secureText1;
              notifyListeners();
            },
            icon: secureText1 ? const Icon(CupertinoIcons.eye_slash,color: Colors.black,
              size: 20.0,) : const Icon(CupertinoIcons.eye_fill,color: Colors.black,
              size: 20.0,),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: textName,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
              borderRadius: BorderRadius.circular(30)),
        );
      }
    else
      {
        return InputDecoration(
          suffixIcon: IconButton(
            onPressed: (){
              secureText2=!secureText2;
              notifyListeners();
            },
            icon: secureText2 ? const Icon(CupertinoIcons.eye_slash,color: Colors.black,
              size: 20.0,) : const Icon(CupertinoIcons.eye_fill,color: Colors.black,
              size: 20.0,),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: textName,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
              borderRadius: BorderRadius.circular(30)),
        );
      }

  }
  static InputDecoration getInputDecoration(BuildContext context,String textName) {
    return InputDecoration(
      fillColor: Colors.white,
      filled: true,
        labelText: textName,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(30)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
          borderRadius: BorderRadius.circular(30)),
    );
  }
  static TextFormField getTextFormField(
      BuildContext context, TextEditingController editingController,String textName) {
    return TextFormField(
      autocorrect: false,
      textInputAction: TextInputAction.next,
      decoration: getInputDecoration(context,textName),
      validator: (value) {
        if (value!.trim().isEmpty || value == 'null') {
          return '* Required';
        }
        return null;
      },
      autofocus: false,
      keyboardType: TextInputType.text,
      controller: editingController,
    );
  }

}