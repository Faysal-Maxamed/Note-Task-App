import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytask_app/home.dart';
import 'package:mytask_app/task_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>TaskProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));
}

