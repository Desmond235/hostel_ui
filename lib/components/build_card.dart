import 'package:flutter/material.dart';
import 'package:hostel_ui/data/data.dart';

class BuildCard extends StatefulWidget {
  const BuildCard({super.key, required this.controller});
  final ScrollController controller;
  @override
  State<BuildCard> createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: ListView.builder(
        controller: widget.controller,
        itemCount: Data.propertyList.length,
        itemBuilder: (context, index) {
          final data = Data.propertyList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 350,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey.shade700),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20),
                    child: Stack(
                      children: [
                        Image.asset(
                          data['image'],
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xff33302f),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text(
                              data['tag'],
                              style: TextTheme.of(context).bodySmall!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xff33302f),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(data['description']), Text(data['price'])],
                  ),
                ),
                Row(
                  children: List.generate(Data.bottomList.length, (index) {
                    final data = Data.bottomList[index];
                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              data['icon'],
                              const SizedBox(width: 3),
                              Text(
                                data['description'],
                                style: TextTheme.of(context).bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
