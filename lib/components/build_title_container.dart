import 'package:flutter/material.dart';

Positioned buildTitleContainer(Size size, BuildContext context) {
    return Positioned(
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
        );
  }