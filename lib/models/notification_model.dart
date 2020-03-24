class Notification{
  Action action;
  String user;
  int amount;
  String date;

  Notification({
    this.action,
    this.user,
    this.amount,
    this.date,
  });
}

enum Action{
  sent,
  received,
  requested
}

List<Notification> notifications = [
  Notification(
    action: Action.sent,
    user:'Ram',
    amount: 34,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user: 'John',
    amount: 23,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.requested,
    user: 'Sandra',
    amount: 10,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.sent,
    user: 'Hitman',
    amount: 12,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user:'Ram',
    amount: 15,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.requested,
    user:'Ram',
    amount: 34,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user: 'John',
    amount: 23,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.requested,
    user: 'Sandra',
    amount: 10,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user: 'Hitman',
    amount: 12,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user:'Ram',
    amount: 15,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.sent,
    user:'Ram',
    amount: 34,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user: 'John',
    amount: 23,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.requested,
    user: 'Sandra',
    amount: 10,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.sent,
    user: 'Hitman',
    amount: 12,
    date: '12.09.2019',
  ),
  Notification(
    action: Action.received,
    user:'Ram',
    amount: 15,
    date: '12.09.2019',
  ),

];