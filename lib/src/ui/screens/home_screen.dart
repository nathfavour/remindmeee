import 'package:flutter/material.dart';
import '../widgets/reminder_card.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/add_button.dart';
import 'create_reminder_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reminders'),
      body: ListView(
        children: const [
          ReminderCard(),
        ],
      ),
      floatingActionButton: const AddButton(),
    );
  }
}
