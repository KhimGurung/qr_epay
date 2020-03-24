import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterPaymentAmountScreen extends StatefulWidget {
  @override
  _EnterPaymentAmountScreenState createState() => _EnterPaymentAmountScreenState();
}

class _EnterPaymentAmountScreenState extends State<EnterPaymentAmountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Payment Amount'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Enter amount',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    SizedBox(
                      width: 200.0,
                      child: TextFormField(
                        initialValue:'0.0',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                        autofocus: true,
                        keyboardType: TextInputType.numberWithOptions(decimal:true),
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                            icon: Icon(
                                Icons.euro_symbol,
                              size: 30.0,
                              color: Theme.of(context).primaryColor,
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Divider()
                    ),
                    SizedBox(height: 10.0,),
                    SizedBox(
                      height: 46.0,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: FloatingActionButton.extended(
                        elevation: 0.0,
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        label: Text(
                          'Pay Now',
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
          ),
        ],
      )
    );
  }
}
