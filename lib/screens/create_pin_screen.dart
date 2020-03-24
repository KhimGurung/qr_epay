import 'package:flutter/material.dart';

class CreatePinScreen extends StatefulWidget {
  @override
  _CreatePinScreenState createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {

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
                        'Create PIN',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 230.0,
                        child: Text(
                          'Keep this PIN. This PIN is required for login.',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        'Enter PIN',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.0,),
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
                      Text(
                        'Confirm PIN',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.0,),
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
                              _emailVerificationCode("1");
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
                              _emailVerificationCode("2");
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
                              _emailVerificationCode("3");
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
                              _emailVerificationCode("4");
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
                              _emailVerificationCode("5");
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
                              _emailVerificationCode("6");
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
                              _emailVerificationCode("7");
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
                              _emailVerificationCode("8");
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
                              _emailVerificationCode("9");
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
                              _emailVerificationCode("0");
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
                              _deleteEmailVerificationCode();
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
                    _createBtn(context),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}

Widget _createBtn(context){
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
        Navigator.pushNamed(context, '/connect-bank');
      },
      child: Text(
        "Create",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
