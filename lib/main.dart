import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/material.dart';
import 'page/home_page.dart';
import 'utils/background_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  final BackgroundService _service = BackgroundService();
 
  _service.initializeIsolate();
  AndroidAlarmManager.initialize();
 
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  static const title = 'Simple Alarm Manager';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: HomePage(title: title),
    );
  }
}