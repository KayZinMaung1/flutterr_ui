

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ui/local_json_parsing/user_details_screen.dart';
import 'package:flutter_ui/model/UserModel.dart';
import 'package:dio/dio.dart';


class UserListWidget extends StatelessWidget {
  

  Future<List<UserModel>> fetchUser (BuildContext context) async{
      final jsonString = await DefaultAssetBundle.of(context).loadString("assets/json/users.json");
      List<UserModel> users = userModelFromJson(jsonString);
      //print(users);
      return users;
  }

  Future<List<UserModel>> getApiUser() async{
    var dio = Dio();
    var response = await dio.get("https://jsonplaceholder.typicode.com/users");
    String jsonString = jsonEncode(response.data);
    List<UserModel> users = userModelFromJson(jsonString);
    return users;
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      
      body: FutureBuilder(
        future: getApiUser(),
        builder: (BuildContext context,AsyncSnapshot snapshot){

          if(snapshot.hasData){

            return ListView.builder(

              itemCount: snapshot.data.length,
              itemBuilder: (context,index){

                UserModel _user = snapshot.data[index];
                return ListTile(
                leading: Text(_user.id.toString()),
                title: Text(_user.name),
                subtitle: Text(_user.email) ,
                trailing: Text(_user.phone),
                
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context){
                        return UserDetailsWidget(user: _user);
                      }
                      )
                  );
                },
              );
              }
            );
          }
          return CircularProgressIndicator();
          
        },
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: getApiUser,
        //   child: Icon(Icons.add),
        // ),
    );
  }
}