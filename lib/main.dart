import 'package:flutter/material.dart';
import 'launch.dart';
import 'package:virtual_galaxy_explorer/login.dart';

void main() {
    runApp(MaterialApp(
      routes: {
        '/' : (context) =>Launch(),
        '/login' : (context) => Login(),
      },
    ));
}

