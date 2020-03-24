import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 40.0),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 280,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
                child: Column(
                  children: <Widget>[
                    _username(),
                    SizedBox(height: 40.0,),
                    _password(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,60.0, 0.0, 20.0),
                      child: Text(
                        'Forgot password? Reset here.',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF929292),
                        ),
                      ),
                    ),
                    _loginBtn(context),
                    SizedBox(height: 60.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Not a member yet?',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFF929292),
                          ),
                        ),
                        _signUpBtn(context)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _username(){
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
      labelText: 'Username',
      labelStyle: TextStyle(
        color: Colors.white,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.5),
          width: 2.0,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.5),
          width: 2.0,
        ),
      ),
      suffixIcon: Icon(
        Icons.person,
        size: 24.0,
        color: Colors.white,
      )
    ),
    style: TextStyle(
      color: Colors.white,
    ),
  );
}

Widget _password(){
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(0.0),
      labelText: 'Password',
      labelStyle: TextStyle(
        color: Colors.white,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.5),
          width: 2.0,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      suffixIcon: Icon(
        Icons.lock,
        size: 24.0,
        color: Colors.white,
      ),
    ),
    style: TextStyle(
      color: Colors.white,
    ),
  );
}

Widget _loginBtn(context){
  return ButtonTheme(
    height: 46.0,
    minWidth: 325.0,
    child: FlatButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(27.0),
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
      child: Text(
        "Log In",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

Widget _signUpBtn(context){
  return ButtonTheme(
    child: FlatButton(
      textColor: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/sign-up');
      },
      child: Text(
        "Sign Up",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
