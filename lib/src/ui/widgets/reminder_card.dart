import 'package:flutter/material.dart';

class ReminderCard extends StatelessWidget {
  const ReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text('Sample Reminder'),
        subtitle: const Text('This is a reminder detail.'),
      ),
    );
  }
}
