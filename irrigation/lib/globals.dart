import 'package:flutter/material.dart';
///Dont change anything in this variable.
int? hour = 00;
int? min = 00;
String hourstr = hour.toString();
String minstr = min.toString();
bool valve1 = false;
bool valve2 = true;
bool pump = true;
final formkey1 = GlobalKey<FormState>();
final formkey2 = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
String textP = "",textv1 = "", textv2 = "";