import 'package:flutter/material.dart';
import 'package:hostel_ui/components/build_card.dart';
import 'package:hostel_ui/components/build_title_container.dart';
import 'package:hostel_ui/components/chip.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          buildTitleContainer(size, context, "Saved Property"),
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
                    child: BuildCard(controller: widget.scrollController,))
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}

