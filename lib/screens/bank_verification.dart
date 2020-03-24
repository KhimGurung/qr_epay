import 'package:flutter/material.dart';

class BankVerificationScreen extends StatefulWidget {
  @override
  _BankVerificationScreenState createState() => _BankVerificationScreenState();
}

class _BankVerificationScreenState extends State<BankVerificationScreen> {

  TextEditingController _firstCodeController = new TextEditingController();
  TextEditingController _secondCodeController = new TextEditingController();
  TextEditingController _thirdCodeController = new TextEditingController();
  TextEditingController _fourthCodeController = new TextEditingController();

  void _bankVerificationCode(String enteredNumber){
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

  void _deleteBankVerificationCode(){

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Bank Verification',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 260.0,
                        child: Text(
                          'A verification code has been sent to your phone number.',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 70.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 52.0,
                            height: 52.0,
                            child: TextField(
                              controller: _firstCodeController,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              autofocus: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          SizedBox(
                            width: 52.0,
                            height: 52.0,
                            child: TextField(
                              controller: _secondCodeController,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              autofocus: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          SizedBox(
                            width: 52.0,
                            height: 52.0,
                            child: TextField(
                              controller: _thirdCodeController,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              autofocus: false,
                              decoration: InputDecoration(
                                filled: true,
                                border: InputBorder.none,
                                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          SizedBox(
                            width: 52.0,
                            height: 52.0,
                            child: TextField(
                              controller: _fourthCodeController,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              autofocus: false,
                              decoration: InputDecoration(
                                filled: true,
                                border: InputBorder.none,
                                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Didn\'t receive a code? ',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Resend.',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Theme.of(context).primaryColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                    ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("1");
                            },
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("2");
                            },
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("3");
                            },
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("4");
                            },
                            child: Text(
                              '4',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("5");
                            },
                            child: Text(
                              '5',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("6");
                            },
                            child: Text(
                              '6',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("7");
                            },
                            child: Text(
                              '7',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("8");
                            },
                            child: Text(
                              '8',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("9");
                            },
                            child: Text(
                              '9',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 100.0,
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _bankVerificationCode("0");
                            },
                            child: Text(
                              '0',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 27.0
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 60.0,
                          width: 100.0,
                          child: FlatButton(
                            onPressed: (){
                              _deleteBankVerificationCode();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 27.0,
                              color: Theme.of(context).primaryColor,
                            )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    SizedBox(
                      height: 46.0,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: FloatingActionButton.extended(
                        elevation: 0.0,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/home', (_) => false);
                        },
                        label: Text(
                          'Verify',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        backgroundColor: Theme.of(context).buttonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
