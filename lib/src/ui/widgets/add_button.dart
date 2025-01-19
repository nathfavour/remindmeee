import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: GestureDetector(
        onTapDown: (_) => _controller.forward(),
        onTapUp: (_) {
          _controller.reverse();
          Navigator.pushNamed(context, '/createReminder');
        },
        onTapCancel: () => _controller.reverse(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[400]!, Colors.blue[600]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.add, color: Colors.white, size: 32),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
