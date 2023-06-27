import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsonProvider extends ChangeNotifier{
  Future<void> jsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/todjsn.json");
    var json = jsonDecode(jsonData);
  }
}