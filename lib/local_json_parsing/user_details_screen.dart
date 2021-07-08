import 'package:flutter/material.dart';
import 'package:flutter_ui/model/UserModel.dart';

class UserDetailsWidget extends StatelessWidget {
  UserModel user;
  UserDetailsWidget({ Key? key,required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(user.name) ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("User Name : ${user.username}"),
            Text("Street : ${user.address.street}"),
            Text("Company : ${user.company.name}"),
            Text("Website : ${user.website}"),
            Text("Phone Number : ${user.phone}"),

            
          ]),
      ),
    );
  }
}