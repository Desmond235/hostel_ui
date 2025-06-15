import 'package:flutter/material.dart';
import 'package:hostel_ui/screens/chatscreen.dart';
import 'package:hostel_ui/screens/mainscreen.dart';
import 'package:hostel_ui/screens/placeholder_screen.dart';
List<Widget> pages(ScrollController controller, ScrollController chatListController){
List<Widget>pages = [
  PlaceholderScreen(title: 'Search'),
  Mainscreen(scrollController: controller ,),
  PlaceholderScreen(title: 'Home'),
  ChatScreen(controller: chatListController ,),
  PlaceholderScreen(title: 'Account')
];
 return pages;
}