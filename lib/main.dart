import 'package:flutter/material.dart';
import 'package:remindmeee/src/ui/theme.dart';
import 'package:remindmeee/src/ui/screens/home_screen.dart';
import 'package:remindmeee/src/ui/screens/settings_screen.dart';
import 'package:remindmeee/src/ui/screens/reminder_detail_screen.dart';
import 'package:remindmeee/src/ui/screens/create_reminder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remindmeee',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/reminderDetail': (context) => const ReminderDetailScreen(),
        '/createReminder': (context) => const CreateReminderScreen(),
      },
    );
  }
}
