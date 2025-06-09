import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key, required this.size});
  final Size size;

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  List<bool> isPressed = List.generate(chipList.length, (index) => false);
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chipList.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: ActionChip(
                  padding: const EdgeInsets.all(13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(25)
                  ),
                  label: Text(
                    chipList[index],
                    style: TextTheme.of(context).bodySmall!.copyWith(
                      color: isSelected ? Colors.white : Colors.grey.shade700,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  backgroundColor:  isSelected ? Color(0xff0ba357) : Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

List chipList = ["All Property", "For sale", "For rent", 'Community'];
