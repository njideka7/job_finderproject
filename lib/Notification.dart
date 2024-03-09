import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NotificationPage(),
  ));
}

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isNewPostNotificationEnabled = true;
  bool isGotHiredNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'New Post',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: isNewPostNotificationEnabled ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                Spacer(),
                Switch(
                  value: isNewPostNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isNewPostNotificationEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 6.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isNewPostNotificationEnabled = true;
                });
              },
              child: Text('if any new post update'),
            ),
            SizedBox(height: 9.0),
            Row(
              children: [
                Text(
                  'Got Hired',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Switch(
                  value: isGotHiredNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isGotHiredNotificationEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isGotHiredNotificationEnabled = true; // Enable "got hired" notification
                });
              },
              child: Text('If you get hired by any company'),
            ),
          ],
        ),
      ),
    );
  }
}
