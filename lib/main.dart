import 'package:flutter/material.dart';
import 'package:json_home/screens/today_json/json_view.dart';
import 'package:json_home/screens/today_json/provider/json_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JsonProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JsonView(),
      ),
    ),
  );
}