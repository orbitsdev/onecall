import 'package:flutter/material.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/constant/firebaseconstant.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

static String screenName= "/home";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [

          Container(
            child: Center(child: Text('home'),),
          ),
          Text('${firebaseauth.currentUser!.email}'),
          ElevatedButton(onPressed: (){
           authcontroller.logout();
          }, child: Text('Logout')),
        ],
      ),
    );
  }
}