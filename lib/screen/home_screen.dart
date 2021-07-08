import 'package:flutter/material.dart';
import 'package:flutter_ui/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   bool _light_theme = true;

  @override
  initState(){
    super.initState();
    _getTheme();
    
  }

  _getTheme() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? theme = prefs.getBool("light_theme");
      if(theme == null){
        _light_theme = true;
      }
      else{
        setState(() {
          _light_theme = theme;
        });
        
      }

      
      
  }

  _saveTheme() async {
    try{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("light_theme", _light_theme);
      print("Save successfully!");
    }
    catch(e){
      
      print(e);

    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: _light_theme? lightTheme: darkTheme,

      home: Scaffold(
        appBar: AppBar(
          title: Text("Theme"),
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: _light_theme, 
                onChanged: (c){
                  setState(() {
                    _light_theme = c;
                    _saveTheme();
                 
                  });
                 
                }),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: (){

                },
                child: Text("Click me"),
                )
          ],),
        ),
      ),
    );
  }
}