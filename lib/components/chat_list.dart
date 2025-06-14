import 'package:flutter/material.dart';
import 'package:hostel_ui/components/custom_dialog.dart';
import 'package:hostel_ui/data/data.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.chatData.length,
      itemBuilder: (context, index) {
        final data = Data.chatData[index];
        return Container(
          // width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 15),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        CustomDialog.show(context: context, image: data['image']);
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(data['image']),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(data['name']),
                              Text(
                                data['time'],
                                style: TextTheme.of(context).bodySmall,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: index == 0
                                    ? Text(
                                        '${data['name']} is typing...',
                                        style: TextTheme.of(context).bodySmall!
                                            .copyWith(color: Color(0xff0ba357)),
                                      )
                                    : Text(
                                        data['message'],
                                        style: TextTheme.of(context).bodySmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                              ),
                              if (index == 2)
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Color(0xff0ba537),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Text(
                                      '1',
                                      style: TextTheme.of(
                                        context,
                                      ).bodySmall!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
