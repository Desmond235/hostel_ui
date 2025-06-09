import 'package:flutter/material.dart';

class Data{
  static const List<IconData> iconSet = [
    Icons.search,
    Icons.favorite_outline,
    Icons.home_outlined, 
    Icons.chat_bubble_outline,
    Icons.person_outline, 
  ];
  static const List<IconData> selectedIconSet = [
    Icons.search,
    Icons.favorite,
    Icons.home,
    Icons.chat_bubble,
    Icons.person,
  ];

  static const List<Map<String, dynamic>> propertyList = [
    {
      "image": 'assets/images/house1.jpg',
      "tag": "Rent",
      "icon": Icons.favorite,
      "price": "\$700",
      "description": "Casa Solana"
      },
      {
      "image": 'assets/images/house2.jpg',
      "tag": "Apartment",
      "icon": Icons.favorite,
      "price": "\$239,340",
      "description": "Serenity Hills"
      },
      {
      "image": 'assets/images/house3.jpg',
      "tag": "Apartment",
      "icon": Icons.favorite,
      "price": "\$450,100",
      "description": "Beverely Hills"
      },
      {
      "image": 'assets/images/house4.jpg',
      "tag": "Rent",
      "icon": Icons.favorite,
      "price": "\$960",
      "description": "Shai Hills"
      }
  ];

  static final List<Map<String, dynamic>> bottomList = [
    {
      "icon": Image.asset('assets/images/bed.png'),
      "description": '06',
    },
    {
      "icon": Image.asset('assets/images/bathtub.png'),
      "description": '04'
    },
    {
      "icon": Image.asset('assets/images/location.png'),
      "description": "Miame, FL"
    }
  ];
  }