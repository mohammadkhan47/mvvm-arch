import 'package:flutter/material.dart';
import 'package:mvvmproject/core/res/components/roundbutton.dart';
import 'package:mvvmproject/core/utils/routes/routes.dart';
import 'package:mvvmproject/core/utils/routes/routes_name.dart';
import 'package:mvvmproject/core/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ValueNotifier<bool> isobscure = ValueNotifier<bool>(false);
  FocusNode emailfocus = FocusNode();
  FocusNode passFocus = FocusNode();@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();

    emailfocus.dispose();
    passFocus.dispose();
    isobscure.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('loginScreen'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: emailController,
        focusNode: emailfocus,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value){
          Utils.fieldFocusChange(context, emailfocus, passFocus);
        },
        decoration: InputDecoration(
            hintText: 'enter email',
            labelText: 'email',
            prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )
        ),
      ),
    ),
          SizedBox(height: 10),
          ValueListenableBuilder(
              valueListenable: isobscure,
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: passwordController,
                    focusNode: passFocus,
                    obscureText: value,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (value){
                      passFocus.unfocus();   // ✔ stop keyboard after password
                    },
                    decoration: InputDecoration(
                      hintText: 'enter password',
                      labelText: 'password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          isobscure.value = !isobscure.value;
                        },
                        icon: Icon(
                            value ? Icons.visibility_off : Icons.visibility
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                );
              }
          ),
          SizedBox(height: height *.1,),
          Roundbutton(title: 'Login', onpress: () {
            if(emailController.text.isEmpty){
              Utils.FlashbarError('please enter email', context);
            }else if(passwordController.text.isEmpty){
              Utils.FlashbarError('please enter password', context);
            }else if(passwordController.text.length<6){
              Utils.FlashbarError('password weak', context);
            }else{
              print('api hit');
            }
          },),
        ],
      ),
    );
  }
}
