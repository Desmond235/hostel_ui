import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hostel_ui/components/bottoom_nav_bar.dart';
import 'package:hostel_ui/components/build_card.dart';
import 'package:hostel_ui/components/chip.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  late ScrollController _scrollController;
  bool _isVisible = true;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener((){
      final direction = _scrollController.position.userScrollDirection;
      final atBottom = _scrollController.offset >= _scrollController.position.maxScrollExtent;

      if(atBottom){
        // if(!_isVisible ){
        //   setState(() {
        //     _isVisible = true;
        //   });
        // }
      }else {
      if(direction == ScrollDirection.reverse ){
        setState(() {
          _isVisible = false;
        });
      }else if(direction == ScrollDirection.forward){
        setState(() {
          _isVisible = true;
        });
      }
      }

    });
    super.initState();
    
  }

   @override
    void dispose() {
      _scrollController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: size.height * 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                ),
              ),
              // height: size.height * 0.14 ,
              width: size.width,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Saved Property",
                    style: TextTheme.of(context).titleSmall,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.132,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -5,
                    child: ChipWidget(size: size),
                  ),
                  SizedBox(
                    height: size.height   * 0.85,
                    child: BuildCard(controller: _scrollController,))
                ],
              )
            ),
          ),
          BottomNavBar(isVisible: _isVisible,),
        ],
      ),
    );
  }
}

