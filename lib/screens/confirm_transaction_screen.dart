import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmTransactionScreen extends StatefulWidget {
  @override
  _ConfirmTransactionScreenState createState() => _ConfirmTransactionScreenState();
}

class _ConfirmTransactionScreenState extends State<ConfirmTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Transaction'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).accentColor,
              boxShadow: [
                BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0,
              ),
              ],
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'Payment amount',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '12.0',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Theme.of(context).primaryColor
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Icon(
                      Icons.euro_symbol,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
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
    );
  }
}
