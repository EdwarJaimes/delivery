import 'package:delivery/main.dart';
import 'package:delivery/src/utils/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  LoginPage({ Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width:  double.infinity,
          child: Column(
            children: [
             /* _imageBanner(),
              _textFieldEmail(),
              _textFieldPassword(),
              _buttonLogin(),*/
              _textDontHaveAcount(),

            ],
          ),
      ));
  }
  Widget _textDontHaveAcount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'no tienes cuenta',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        SizedBox(
          width: 9,
        ),
        Text(
            'registrate',
          style: TextStyle(
            fontWeight: FontWeight.bold, color: MyColors.primaryColor
          ),
        )
      ],
    );
  }

}