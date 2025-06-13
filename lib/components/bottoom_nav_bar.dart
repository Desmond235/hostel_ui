import 'package:flutter/material.dart';
import 'package:hostel_ui/data/data.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.currentIndex, required this.onItemTapped, required this.isVisible});
  final int currentIndex;
  final Function(int) onItemTapped;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: MediaQuery.of(context).size.width * 0.085,
      child: Center(
        child: AnimatedOpacity(
          opacity: isVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xffe0e0e0),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                ...List.generate(Data.iconSet.length, (index) {
                  final isSelected = index == currentIndex;
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: InkWell(
                      onTap: () => onItemTapped(index),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0xff0ba357) : Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: isSelected
                            ? Icon(
                                Data.selectedIconSet[index],
                                size: 35,
                                color: Colors.white,
                              )
                            : Icon(
                                Data.iconSet[index],
                                size: 35,
                                color: Colors.grey.shade700,
                              ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}