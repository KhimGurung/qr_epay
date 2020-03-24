
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speed_epay/models/notification_model.dart' as notification;

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification',
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body:ListView.builder(
        itemCount: notification.notifications.length,
        itemBuilder: (context, index){
            if(notification.notifications[index].action == notification.Action.sent)
              return _sentItem(notification.notifications[index]);
            if(notification.notifications[index].action == notification.Action.received)
              return _receivedItem(notification.notifications[index]);
            if(notification.notifications[index].action == notification.Action.requested)
              return _requestedItem(notification.notifications[index]);
          },
      )
    );
  }
}

Widget _sentItem(notification.Notification notification){
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xFFDFDFDF)
        )
      )
    ),
    child: Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {},
        leading: Container(
          height: 67,
          width: 67,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Center(
            child: Text(notification.user.substring(0,1),
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),),
          ),
        ),
        title: RichText(
          text:  TextSpan(
            style:  TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(text: 'You have sent '),
              TextSpan(text: notification.amount.toString(), style: new TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' to '),
              TextSpan(text: notification.user, style: new TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        subtitle: Text(notification.date),
        trailing: Icon(Icons.more_horiz),
      ),
    ),
  );
}

Widget _receivedItem(notification.Notification notification){
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Color(0xFFDFDFDF)
            )
        )
    ),
    child: Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {},
        leading: Container(
          height: 67,
          width: 67,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Center(
            child: Text(notification.user.substring(0,1),
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),),
          ),
        ),
        title:  RichText(
          text:  TextSpan(
            style:  TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
               TextSpan(text: 'You have received amount of '),
               TextSpan(text: notification.amount.toString(), style: new TextStyle(fontWeight: FontWeight.bold)),
               TextSpan(text: ' from '),
               TextSpan(text: notification.user, style: new TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        subtitle: Text(notification.date),
        trailing: Icon(Icons.more_horiz),
      ),
    ),
  );
}

Widget _requestedItem(notification.Notification notification){
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Color(0xFFDFDFDF)
            )
        )
    ),
    child: Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {},
        leading: Container(
          height: 67,
          width: 67,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: Center(
            child: Text(notification.user.substring(0,1),
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),),
          ),
        ),
        title:  RichText(
          text:  TextSpan(
            style:  TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(text: notification.user, style: new TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' has requested a payment of '),
              TextSpan(text: notification.amount.toString(), style: new TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        subtitle: Text(notification.date),
        trailing: Icon(Icons.more_horiz),
      ),
    ),
  );
}