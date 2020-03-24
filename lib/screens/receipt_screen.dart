
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speed_epay/models/receipt_model.dart';
import 'package:speed_epay/models/store_model.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:collection/collection.dart';

double totalAmount;
int totalReceipt;

class ReceiptScreen extends StatefulWidget {
  @override
  _ReceiptScreenState createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Receipt',
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body:GroupedListView<dynamic, String>(
        groupBy: (receipt) => receipt.date,
        elements: receipts,
        order: GroupedListOrder.DESC,
        groupSeparatorBuilder: _buildGroupSeparator,
        itemBuilder: (context, receipt) {
          totalReceipt = totalReceipt - 1;
          return _renderReceipt(receipt, context);
        },
      ),
    );
  }
}

Widget _renderReceipt(Receipt receipt, context){
  return Column(
    children: <Widget>[
      Card(
        margin: const EdgeInsets.symmetric(vertical:5.0, horizontal: 0.0),
        elevation: 0.0,
        child: ListTile(
          onTap: () {},
          leading: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
              image: DecorationImage(
                  image: AssetImage('assets/images/store/'+_getStoreLogo(receipt.storeId)),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            _getStoreName(receipt.storeId),
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
              _getStoreAddress(receipt.storeId),
              style: TextStyle(
                fontSize: 12.0
              )
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFFF3F5F9)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 13.0),
                  child: Text(
                    receipt.amount.toString()+'€',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF007AFF),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0),
                child: Text(
                    _getPaymentMethod(receipt.paymentMethod),
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Color(0xFF8A8A8F)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Divider(thickness: 0.5, color: Color(0xFFC8C7CC), indent: 80.0, height: 0.0, ),
      if(totalReceipt == 0)
        Container(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 40.0 ),
              child: RichText(
                text:  TextSpan(
                  style:  TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Total: '),
                    TextSpan(
                        text: totalAmount.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF007AFF)
                        ),
                    ),
                    TextSpan(
                        text: ' €',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007AFF)
                      )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    ],
  );
}

Widget _buildGroupSeparator(dynamic groupByValue) {
  var selectedReceipts = receipts.where((receipt) => receipt.date == groupByValue);
  totalAmount = selectedReceipts.fold(0, (sum, item) => sum + item.amount);
  totalReceipt = selectedReceipts.length;

  return Container(
    height: 43.0,
    decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Color(0xFFDFDFDF)
          ),
          top: BorderSide(
              color: Color(0xFFDFDFDF)
          ),
        ),
        color: Color(0xFFF3F5F9)
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          groupByValue,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    ),
  );
}

String _getStoreName(int storeId){
  Store store = stores.where((store) => store.id == storeId).first;
  return store.name ;
}

String _getStoreAddress(int storeId){
  Store store = stores.where((store) => store.id == storeId).first;
  return store.address ;
}

String _getStoreLogo(int storeId){
  Store store = stores.where((store) => store.id == storeId).first;
  return store.logo ;
}

String _getPaymentMethod(PaymentMethods paymentMethod){
  if(paymentMethod == PaymentMethods.SpeedePay)
    return 'Speed ePay';
}