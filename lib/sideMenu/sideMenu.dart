import 'package:flutter/material.dart';
import 'package:kirana_kinara/main.dart';
import 'package:kirana_kinara/pages/profile.dart';
import 'package:kirana_kinara/pages/history.dart';
import 'package:kirana_kinara/pages/notification.dart';
import 'package:kirana_kinara/pages/contact.dart';
import 'package:kirana_kinara/pages/feedback.dart';
import 'package:kirana_kinara/pages/TnC.dart';
import 'package:kirana_kinara/pages/login.dart';

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Morning';
  }
  if (hour < 17) {
    return 'Afternoon';
  }
  return 'Evening';
}

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Good ' + greeting(),
                    style: TextStyle(color: Colors.white60),
                  ),
                  Text(
                    'Nicholas',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListItem('Homepage', Icons.home, Kirana()), //sorting
            ListItem('My Profile', Icons.assignment_ind, Profile()),
            ListItem('Order History', Icons.history, History()),
            ListItem('Notification', Icons.notifications_active, Alerts()),
            ListItem('Contact info', Icons.contact_mail, Contact()),
            ListItem('Feedback (Let\'s be honest)', Icons.feedback, FeedBack()),
            // ListItem('Follow Us', Icons.whatshot),
            ListItem('Terms & Conditions', Icons.info, Tnc()),
            ListItem('Log Out', Icons.exit_to_app, Login()),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  var linkedTo;
  var tileIcon;
  var link;
  ListItem(this.linkedTo, this.tileIcon, this.link);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            tileIcon,
            color: Colors.white54,
          ),
          SizedBox(
            width: 20,
          ),
          Text(linkedTo, style: TextStyle(color: Colors.white70)),
        ],
      ),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => link),
        );
      },
    );
  }
}
