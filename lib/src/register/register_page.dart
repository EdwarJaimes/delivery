import 'package:delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: _circleRegister(),
                left: -110,
                top: -100,
              ),
              Positioned(
                child: _textRegister(),
                top: 52,
                left: 16,
              ),
              Positioned(
                child: _iconBack(),
                top: 38,
                left: -10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 120),
                child: SingleChildScrollView(
                  child:  Column(
                    children: [
                      _imageUser(),
                      SizedBox(height: 15),
                  _textFieldEmail(),
                  _textFieldName(),
                  _textFieldLastName(),
                  _textFieldPhone(),
                  _textFieldPhone(),
                  _textFieldPassword(),
                  _textFieldConfirmPassword(),
                  _buttonRegister()

                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    )
  }
}