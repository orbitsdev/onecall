
import 'package:flutter/material.dart';
import 'package:onecall/body/navigation_content/favorite_content/favorite_content.dart';
import 'package:onecall/body/navigation_content/home_content/home_content.dart';
import 'package:onecall/body/navigation_content/profile_content/profile_content.dart';
import 'package:onecall/body/navigation_content/reciept_content/reciept_content.dart';


///for home main screen use
List<Widget> pages = [
  HomeContent(),
  FavoriteContent(),
  RecieptContent(),
  ProfileContent()
];

//boom navigation icon
List<IconData> iconList =[
  Icons.home_outlined,
  Icons.favorite_border_outlined,
  Icons.receipt_outlined,
  Icons.account_circle_outlined,
];