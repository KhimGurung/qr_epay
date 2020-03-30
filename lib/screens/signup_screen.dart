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

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                padding: EdgeInsets.fromLTRB(35.0, height*0.12, 35.0, height*0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
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
                    _username(),
                    _emailAddress(),
                    _confirmEmailAddress(),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 46.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 14.0,
                          ),
                        ),
                        _gotoSignInBtn(),
                      ],
                    ),
                    SizedBox(height: 10,),
                    _nextBtn(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, height*0.06, 0.0, height*0.04),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Terms of Use and Privacy Policy.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF8A8A8F),
                          ),
                        ),
                      ),
                    )
                  ],
                    ),
                ),
              ),
            ),
          )
        ],
      ),
    );
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
            size: 22.0,
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
            Icons.mail ,
            size: 22.0,
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
            Icons.mail ,
            size: 22.0,
            color: Colors.white,
          )
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Widget _nextBtn(){
    return ButtonTheme(
      height: 46.0,
      minWidth: double.infinity,
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

  Widget _gotoSignInBtn(){
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

}
