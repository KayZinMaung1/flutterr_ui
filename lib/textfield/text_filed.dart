import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: EmailController,
              decoration: InputDecoration(
                hintText: "demo@gmail.com",
                hintStyle: TextStyle(
                  color: Colors.teal
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  ),
                border: OutlineInputBorder(
            
                ),

              ),
            ),
            
            SizedBox(
              height: 30,
            ),

            TextFormField(
              controller: PasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "At least 8 characters",
                hintStyle: TextStyle(
                  color: Colors.teal,
                  ),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  
                )
               ),
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton( 
              child: Text("Login",style: TextStyle(fontSize: 20),),
              onPressed: (){
                var email = EmailController.text;
                var password = PasswordController.text;
                print("Email is $email");
                print("Password is $password");
              },
              )
        ],),
      ),
    );
  }
}