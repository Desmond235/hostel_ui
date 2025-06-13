import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hostel_ui/components/bottoom_nav_bar.dart';
import 'package:hostel_ui/components/pages.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex= 0;
  late ScrollController _controller;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener((){
      final direction = _controller.position.userScrollDirection;
      if(direction == ScrollDirection.reverse){
        setState(() {
          _isVisible = false;
        });
      }else if(direction == ScrollDirection.forward){
        setState(() {
          _isVisible = true;
        });
      }
    });
    
  }

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages(_controller)[_currentIndex],
          BottomNavBar(
            currentIndex: _currentIndex,
            onItemTapped: _onItemTapped,
            isVisible: _isVisible,
          ),
        ],
      ),
    );
  }
}