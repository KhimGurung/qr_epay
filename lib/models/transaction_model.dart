
class Transaction {
  String name;
  String amount;
  String date;
  String action;

  Transaction({
    this.name,
    this.amount,
    this.date,
    this.action,
  });
}

List<Transaction> transactions = [
  Transaction(
    name: 'Faruk Khan',
    amount: '62',
    date: '10.05.2019',
    action: 'Money sent',
  ),
  Transaction(
    name: 'Faruk Khan',
    amount: '62',
    date: '10.15.2019',
    action: 'Money received',
  ),
  Transaction(
    name: 'Mohammed Taimoor',
    amount: '123',
    date: '11.23.2019',
    action: 'Money sent',
  ),
  Transaction(
    name: 'Khim Bahadur Gurung',
    amount: '1200',
    date: '12.25.2019',
    action: 'Money received',
  ),
];
