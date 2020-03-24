import 'package:flutter/material.dart';

class ConnectBankScreen extends StatefulWidget {
  @override
  _ConnectBankScreenState createState() => _ConnectBankScreenState();
}

class _ConnectBankScreenState extends State<ConnectBankScreen> {

  TextEditingController _firstCodeController = new TextEditingController();
  TextEditingController _secondCodeController = new TextEditingController();
  TextEditingController _thirdCodeController = new TextEditingController();
  TextEditingController _fourthCodeController = new TextEditingController();

  void _emailVerificationCode(String enteredNumber){
    if(_firstCodeController.text == null || _firstCodeController.text == ''){
      setState(() {
        _firstCodeController.text = enteredNumber;
      });
    }else if(_secondCodeController.text == null || _secondCodeController.text == ''){
      setState(() {
        _secondCodeController.text = enteredNumber;
      });
    }else if(_thirdCodeController.text == null || _thirdCodeController.text == ''){
      setState(() {
        _thirdCodeController.text = enteredNumber;
      });
    }else if(_fourthCodeController.text == null || _fourthCodeController.text == ''){
      setState(() {
        _fourthCodeController.text = enteredNumber;
      });
    }
  }

  void _deleteEmailVerificationCode(){

    if(_fourthCodeController.text != ''){
      setState(() {
        _fourthCodeController.text = '';
      });
    }else if(_thirdCodeController.text != ''){
      setState(() {
        _thirdCodeController.text = '';
      });
    }else if(_secondCodeController.text != ''){
      setState(() {
        _secondCodeController.text = '';
      });
    }else if(_firstCodeController.text != ''){
      setState(() {
        _firstCodeController.text = '';
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).backgroundColor,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Bank Account',
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 50.0,),
                        Column(
                          children: <Widget>[
                            _iban(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
                              child: _dob(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 85.0,
                        color: Color(0xFFD5D5D5),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Skip this step  ',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 14.0,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0,),
                      _connectBtn(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

Widget _connectBtn(context){
  return ButtonTheme(
    height: 46.0,
    minWidth: 269.0,
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
        Navigator.pushNamed(context, '/bank-verification');
      },
      child: Text(
        "Connect",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

Widget _iban(){
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        labelText: 'IBAN',
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
    ),
    style: TextStyle(
      color: Colors.white,
    ),
  );
}

Widget _dob(){
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        labelText: 'Date of Birth',
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
    ),
    style: TextStyle(
      color: Colors.white,
    ),
  );
}
