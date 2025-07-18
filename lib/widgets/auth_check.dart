import 'package:atvd42/main.dart';
import 'package:atvd42/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({ Key? key }) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthServices auth = Provider.of<AuthServices>(context);
    if (auth.isLoading) {
      return Loading();
    }else{
      if (auth.usuario == null) {
        return LoginPage();
      }else{
        return MyApp();
      }
    }
  }

  Loading(){
    
  }
}