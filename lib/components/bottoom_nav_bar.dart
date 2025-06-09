import 'package:flutter/material.dart';
import 'package:hostel_ui/data/data.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: MediaQuery.of(context).size.width * 0.085,
      child: Center(
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
                final isSelected = index == selectedIndex;
                return Padding(
                  padding: const EdgeInsets.all(3),
                  child: InkWell(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
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
    );
  }
}
