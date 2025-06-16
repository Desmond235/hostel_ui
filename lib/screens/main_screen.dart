import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hostel_ui/components/bottoom_nav_bar.dart';
import 'package:hostel_ui/components/pages.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _currentIndex= 0;
  late ScrollController _controller;
  late ScrollController _chatListController;
  late PageController _pageController;
  bool _isVisible = true;


  /// Listens to the given [ScrollController] and updates [_isVisible] whether the bottom nav bar should be shown
  /// or hidden based on the user's scrolling direction.
  void listener(ScrollController controller){
    controller.addListener((){
      final direction = controller.position.userScrollDirection;
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
  void initState() {
    super.initState();
    _controller = ScrollController();
    listener(_controller);
    _chatListController = ScrollController();
    listener(_chatListController);
    _pageController = PageController(initialPage: _currentIndex);
  }

   @override
    void dispose() {
      super.dispose();
        _controller.dispose();
        _chatListController.dispose();
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
    final pageList = pages(_controller, _chatListController);
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