

import 'package:assignment_statefull_widget/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey,
          elevation: 8,
          sizeConstraints:const BoxConstraints(
            minHeight: 40,
            minWidth: 40,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        )
      ),
    );
  }
}