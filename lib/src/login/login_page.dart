import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../utils/my_colors.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({ Key? key}) : super(key: key);

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
              _imageBanner(),
              _textFieldEmail(),
              _textFieldPassword(),
              _buttonLogin(),
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
              fontWeight: FontWeight.bold, color: MyColors.primaryColor),
        )
      ],
    );
  }
Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: ElevatedButton(
        onPressed: (){},
        child: Text('ingresar'),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(vertical: 15)),
      ),
    );
}
Widget _textFieldEmail(){
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'correo',
          hintStyle: TextStyle(color: MyColors.primaryDark),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Icon(
            Icons.email,
            color: MyColors.primaryColor,
          )),
      ),
    );
}
  Widget _textFieldPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'contraseña',
            hintStyle: TextStyle(color: MyColors.primaryDark),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }
  Widget _imageBanner(){
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.12,
        bottom: MediaQuery.of(context).size.height * 0.15),
        child: Lottie.asset(
          'assets/img/delivery.json',
          repeat: true,
        ),
      );
  }
}