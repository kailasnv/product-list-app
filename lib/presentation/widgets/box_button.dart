import 'package:flutter/material.dart';

class BoxButton extends StatelessWidget {
  final Widget child;
  const BoxButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
