import 'package:creating_invoice_application/formfield_data/form_field_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController pass1Controller = TextEditingController();
  final TextEditingController pass2Controller = TextEditingController();
  @override
  void dispose() {
    pass1Controller.dispose();
    pass2Controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>TextFormFieldData(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_arrow_left,color: Colors.black,),
            onPressed: (){},
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 20,right: 20),
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.lock_outline,size: 90),
                  const Text('Change Password',style: TextStyle(fontSize: 30),),
                  Consumer<TextFormFieldData>(builder: (context,getVisible,child){
                    return getVisible.getTextFormFieldForPassword(pass1Controller, 'Enter New Password',"secureText1");
                  }),
                  Consumer<TextFormFieldData>(builder: (context,getVisible,child){
                    return getVisible.getTextFormFieldForPassword(pass2Controller, 'Confirm Password',"secureText2");
                  }),
                  /*TextFormField(
                    obscureText: _obsecureText1,
                    autocorrect: false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecureText1 = !_obsecureText1;
                          });
                        },
                        icon: _obsecureText1
                            ? const Icon(
                          CupertinoIcons.eye_slash,
                          color: Colors.black,
                          size: 20.0,
                        )
                            :  const Icon(
                          CupertinoIcons.eye_fill,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter New Password *',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    textInputAction: TextInputAction.next,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    controller: pass1Controller,
                  ),
                  TextFormField(
                    autocorrect: false,
                    obscureText: _obsecureText2,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecureText2 = !_obsecureText2;
                          });
                        },
                        icon: _obsecureText2
                            ? const Icon(
                          CupertinoIcons.eye_slash,
                          color: Colors.black,
                          size: 20.0,
                        )
                            :  const Icon(
                          CupertinoIcons.eye_fill,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Confirm Password *',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    textInputAction: TextInputAction.next,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    controller: pass2Controller,
                  ),*/
                  OutlinedButton(onPressed: (){}, child: const Text('Submit')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
