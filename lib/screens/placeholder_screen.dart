import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xff0ba537),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          title,
          style: TextTheme.of(
            context,
          ).titleSmall!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
