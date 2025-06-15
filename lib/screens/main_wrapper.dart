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
  late PageController _pageController;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _pageController = PageController(initialPage: _currentIndex);
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

   @override
    void dispose() {
      super.dispose();
        _controller.dispose();
        _pageController.dispose();
    }

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    final pageList = pages(_controller);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              ...pageList
            ],
          ),
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