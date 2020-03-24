import 'package:speed_epay/models/store_model.dart';

class Receipt{
  int storeId;
  double amount;
  PaymentMethods paymentMethod;
  String date;

  Receipt( {
    this.storeId,
    this.amount,
    this.paymentMethod,
    this.date
  });
}

enum PaymentMethods{
  SpeedePay,
}

List<Receipt> receipts =[
  Receipt(
      storeId: 1,
      amount : 22.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '15.12.2019'
  ),
  Receipt(
      storeId: 2,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '15.12.2019'
  ),
  Receipt(
      storeId: 1,
      amount : 28.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '15.12.2019'
  ),
  Receipt(
      storeId: 3,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '15.12.2019'
  ),
  Receipt(
      storeId: 4,
      amount : 22.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.12.2019'
  ),
  Receipt(
      storeId: 5,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.12.2019'
  ),
  Receipt(
      storeId: 1,
      amount : 28.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.12.2019'
  ),
  Receipt(
      storeId: 6,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.12.2019'
  ),
  Receipt(
      storeId: 5,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.12.2019'
  ),
  Receipt(
      storeId: 7,
      amount : 28.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.01.2020'
  ),
  Receipt(
      storeId: 1,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.01.2020'
  ),
  Receipt(
      storeId: 8,
      amount : 12.75,
      paymentMethod: PaymentMethods.SpeedePay,
      date: '20.01.2020'
  )
];