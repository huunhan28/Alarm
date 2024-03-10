import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

@pragma('vm:entry-point')
void printHello() {
  FlutterRingtonePlayer().playNotification();
  final DateTime now = DateTime.now();
  print("[$now] Hello, world!  function='$printHello'");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();
  await AndroidAlarmManager.initialize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));

  var db = FirebaseFirestore.instance;
  // Create a new user with a first and last name
//   final user = <String, dynamic>{
//     "first": "Adammmmmmmm",
//     "last": "Lovelace",
//     "born": 1815
//   };

// // Add a new document with a generated ID
//   db.collection("users").add(user).then((DocumentReference doc) =>
//       print('DocumentSnapshot added with ID: ${doc.id}'));

  await db.collection("users").get().then((event) {
    for (var doc in event.docs) {
      print("${doc.id} => ${doc.data()}");
    }
  });

  FlutterRingtonePlayer().playNotification();

  final int helloAlarmID = 1;
  print("Hello, world!  set up ");
  await AndroidAlarmManager.oneShot(
      Duration(seconds: 1), helloAlarmID, printHello);
}
