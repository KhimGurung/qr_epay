import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speed_epay/models/transaction_model.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _body(),
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  Widget _body(){
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 120,
          onStretchTrigger: () {
            // Function callback for stretch
            return;
          },
          backgroundColor: Theme.of(context).backgroundColor,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              color: Colors.white,
              tooltip: 'Settings',
              onPressed: () {
                print('hello');
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              color: Colors.white,
              tooltip: 'Notification',
              onPressed: () {
                Navigator.pushNamed(context, '/notification');
              },
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            title: Text(
              "Hello, James",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).primaryColor
              ),
            ),
            titlePadding: EdgeInsets.fromLTRB(20, 0, 0, 15),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor
                  ),
                  transform: Matrix4.translationValues(0.0, -400.0, 0.0),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Your balance is:',
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      '120,00 €',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                                _buildDigitalReceiptButton(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 22,
                          decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor
                          ),
                        ),
                        Container(
                          child: _floatingPayButton(),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                      child: _buildActions(),
                    ),
                    Divider(
                      thickness:4.0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Recent Transactions',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                          Icon(
                            Icons.trending_flat,
                            color: Color(0xFF929292),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: transactions.asMap().entries.map(
                                  (MapEntry map)=> _buildTransaction(map.key)
                          ).toList()
                      ),
                    ),
                    // ListTiles++
                  ],
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }

  Widget _bottomNavigation(){
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.white
      ),
      child: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int index) async {
          setState(() {
            _currentTab = index;
          });

          if(index == 3){
            await showMenu<String>(
              context: context,
              position: RelativeRect.fromLTRB(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height-210, 0.0, 0.0),
              items: <PopupMenuItem<String>>[
                new PopupMenuItem<String>(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/qr-code');
                    },
                    child: Text('My QR code'),
                  ),
                ),
                new PopupMenuItem<String>(
                    child: const Text('Scan digital receipt'), value: 'test2'),
              ],
              elevation: 8.0,
            );
          }
        },
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text('Wallet')
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/pfand.png'),
              height: 30.0,
            ),
            title: Text('PFand'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: Colors.grey,
            ),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              size: 30.0,
              color: Colors.grey,
            ),
            title: Text('Shop'),
          ),
        ],
      ),
    );
  }

  Widget _buildDigitalReceiptButton(){
    return FlatButton.icon(
      padding: EdgeInsets.fromLTRB(0.0, 7.0, 5.0, 7.0),
      onPressed: () {
        Navigator.pushNamed(context, '/receipt');
      },
      color: Theme.of(context).buttonColor,
      icon: const Icon(
        Icons.phone_iphone,
        color: Colors.white,
        size: 40.0,
      ),
      label: Container(
        width: 58.0,
        child: Text(
            'Digital Receipt',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: Theme.of(context).secondaryHeaderColor,
          ),
          maxLines: 2,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }

  Widget _floatingPayButton() {
    Future _scanQR() async {
      try{
        String qrResult = await BarcodeScanner.scan();
        print(qrResult);
        if(qrResult == '4005808701650'){
          Navigator.pushNamed(context, '/enter-payment-amount');
        }else{
          Navigator.pushNamed(context, '/confirm-transaction');
        }

      }on PlatformException catch(e){
        if(e.code == BarcodeScanner.CameraAccessDenied){
          print('Camera permission was denied');
        }else{
          print('Unknown Error ${e}');
        }
      } on FormatException{
        print('Format exception, you presed the back button before scanning.');
      }catch(e){

      }
    }
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: FlatButton(
                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            _scanQR();
                          },
                          child: Text(
                            "QR Pay",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: FlatButton(
                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            /*...*/
                          },
                          child: Text(
                            "NFC Pay",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }

  Widget _buildActions(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Actions to do',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 65.0,
                  width: 65.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                        color: Color(0xFF5C6F8D),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image(
                      image: AssetImage('assets/images/money-in.png'),
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Text('Request',),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 65.0,
                  width: 65.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFF5C6F8D),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image(
                      image: AssetImage('assets/images/money-out.png'),
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Text('Send'),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 65.0,
                  width: 65.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFF5C6F8D),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image(
                      image: AssetImage('assets/images/transfer.png'),
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Text('Transfer'),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _buildTransaction(int index){
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Text('KG',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),),
                ),
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      transactions[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                      )
                  ),
                  Text(
                    '${transactions[index].action} - ${transactions[index].date}',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF8A8A8F),
                    ),
                  )
                ],
              ),
            ],
          ),
          Text(
            transactions[index].amount,
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ],
      ),
    );
  }
}
