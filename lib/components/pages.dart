import 'package:flutter/material.dart';
import 'package:hostel_ui/screens/chatscreen.dart';
import 'package:hostel_ui/screens/mainscreen.dart';
import 'package:hostel_ui/screens/placeholder_screen.dart';
List<Widget> pages(ScrollController controller){
List<Widget>pages = [
  PlaceholderScreen(title: 'Search'),
  Mainscreen(scrollController: controller ,),
  PlaceholderScreen(title: 'Home'),
  ChatScreen(),
  PlaceholderScreen(title: 'Account')
];
 return pages;
}