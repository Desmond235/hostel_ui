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
      "image": 'assets/images/house3.jpg',
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

   static final List<Map<String, dynamic>> chatData = [
    {
      "image": "assets/images/man_jacket.jpg",
      "name": "Desmond Adabe",
      "message": "Hello, how are you?",
      "time": "10:00 AM",
    },
    {
      "image": "assets/images/woman_hot.jpg",
      "name": "Francisca Bae",
      "message": "You are very pretty and hot",
      "time": "3:00 PM",
    },
    {
      "image": "assets/images/woman_hat.jpg",
      "name": "Linda Asamoah",
      "message": "Politics is not all the bad",
      "time": "Sat",
    },
    {
      "image": "assets/images/man_sweater.jpg",
      "name": "John",
      "message": "I am a software developer",
      "time": "Mon",
    },
    {
      "image": "assets/images/woman_white.jpg",
      'name': "Sweet Joana",
      "message": "I will see you tonight at the event",
      "time": "Wed",
    },
    {
      "image": "assets/images/man_black.jpg",
      "name": "Gustavo Lopez",
      "message": "Yes, that would be nice",
      "time": "Thu",
    },
    {
      "image": "assets/images/woman_china.jpg",
      "name": "Pretty Sasha",
      "message": "You are very cute",
      "time": "Fri"
    },
    {
      "image": "assets/images/man_white.jpg",
      "name": "Richard Mensah",
      "message": "The event will take place at Kimspiki Hotel",
      "time": "6/10/25"
    },
    {
      "image": "assets/images/woman_islam.jpg",
      "name": "Farida Mohammed",
      "message": "I will pay you a visit someday",
      "time": "6/10/25"
    },
    {
      "image": "assets/images/woman_yellow.jpg",
      "name": "Cynthia Adjei",
      "message": "Hello, How do you do?",
      "time": "6/09/25"
    }
   ];
  }