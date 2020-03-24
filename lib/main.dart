import 'package:flutter/material.dart';
import 'package:speed_epay/screens/bank_verification.dart';
import 'package:speed_epay/screens/enter_payment_amount_screen.dart';
import 'screens/home_screen.dart';
import 'package:speed_epay/screens/confirm_transaction_screen.dart';
import 'package:speed_epay/screens/qr_code_screen.dart';
import 'package:speed_epay/screens/login_screen.dart';
import 'package:speed_epay/screens/email_verification.dart';
import 'package:speed_epay/screens/signup_screen.dart';
import 'package:speed_epay/screens/create_pin_screen.dart';
import 'package:speed_epay/screens/connect_bank_screen.dart';
import 'package:speed_epay/screens/notification_screen.dart';
import 'package:speed_epay/screens/receipt_screen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Speed ePay',
  initialRoute: '/signup',
  routes: {
    '/' : (context) => LoginScreen(),
    '/sign-up': (context) => SignupScreen(),
    '/home': (context) => HomeScreen(),
    '/notification' : (context) => NotificationScreen(),
    '/receipt' : (context) => ReceiptScreen(),
    '/confirm-transaction' : (context) => ConfirmTransactionScreen(),
    '/enter-payment-amount' : (context) => EnterPaymentAmountScreen(),
    '/email-verification' : (context) => EmailVerificationScreen(),
    '/create-pin' : (context) => CreatePinScreen(),
    '/connect-bank' : (context) => ConnectBankScreen(),
    '/bank-verification' : (context) => BankVerificationScreen(),
    '/qr-code' : (context) => QRCodeScreen(),
  },
  theme: ThemeData(
    primaryColor: Color(0xFFFFBE00),
    accentColor: Color(0xFFF3F5F9),
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    backgroundColor: Color(0xFF2D31C6),
    buttonColor: Color(0xFFFFBE00),
    highlightColor: Color(0xFFFFBE00),
    secondaryHeaderColor: Color(0xFF231F20),
    dividerColor: Color(0xFFf2f2f2),
    primaryIconTheme: IconThemeData(
      color: Colors.white
    ),
    primaryTextTheme: TextTheme(
        title: TextStyle(
        color: Colors.white
        ),
    ),
  ),
));