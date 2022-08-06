import 'package:flutter/material.dart';
import 'package:walet/pages/homepage.dart';
import 'package:walet/route_generator.dart';

void main() =>runApp(const MaterialApp(
debugShowCheckedModeBanner: false,
  initialRoute: '/',
  onGenerateRoute: RouteGenerator.generateRoute,
),
);
