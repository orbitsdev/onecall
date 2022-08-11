import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

static String screenName= "/home";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(
        child: Center(child: Text('home'),),
      ),
    );
  }
}