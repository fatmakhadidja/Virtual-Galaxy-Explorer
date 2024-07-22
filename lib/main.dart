import 'package:flutter/material.dart';
import 'launch.dart';
import 'Q&A/q&a.dart';


void main() {
    runApp(MaterialApp(
      routes: {
        '/' : (context) => Launch(),
        '/q&a' : (context) => QandA(),
      },
    ));
}

