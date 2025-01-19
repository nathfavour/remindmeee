import 'package:flutter/material.dart';
import '../widgets/reminder_card.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/add_button.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reminders'),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 10, // Replace with actual reminder count
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: const ReminderCard(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: const AddButton(),
    );
  }
}
