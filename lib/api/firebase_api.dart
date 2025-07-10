import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    //request permission for user (will prompt user))
    await _firebaseMessaging.requestPermission();
    // fetch the FCM token for this device
    final fCMToken = await _firebaseMessaging.getToken();
    //print the token
    print("FCM Token: $fCMToken"); // print the token

    // function to handle received messages

    // function to initialize foreground and background settings
  }
}
