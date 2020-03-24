import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35.0, 50.0, 35.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hello,',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Sign Up!',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 0.0),
                      child: _username(),
                    ),
                    _emailAddress(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 0.0),
                      child: _confirmEmailAddress(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontSize: 16.0,
                            ),
                          ),
                          _gotoSignInBtn(context),
                        ],
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                        child: _nextBtn(context),
                      ),
                    ],
                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 0.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Terms of Use and Privacy Policy.',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFF8A8A8F),
                          ),
                        ),
                      ),
                    )
                ]
                ),
              ),
            ),
          )
        ],
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

Widget _emailAddress(){
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        labelText: 'Email address',
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
          Icons.alternate_email ,
          size: 24.0,
          color: Colors.white,
        )
    ),
    style: TextStyle(
      color: Colors.white,
    ),
  );
}

Widget _confirmEmailAddress(){
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        labelText: 'Confirm email address',
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
          Icons.alternate_email ,
          size: 24.0,
          color: Colors.white,
        )
    ),
    style: TextStyle(
      color: Colors.white,
    ),
  );
}

Widget _nextBtn(context){
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
        Navigator.pushNamed(context, '/email-verification');
      },
      child: Text(
        "Next",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

Widget _gotoSignInBtn(context){
  return ButtonTheme(
    child: FlatButton(
      textColor: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/');
      },
      child: Text(
        "Sign In",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
