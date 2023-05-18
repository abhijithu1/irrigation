import 'package:flutter/material.dart';

int? hour = 00;
int? min = 00;
String hourstr = hour.toString();
String minstr = min.toString();
bool valve1 = false;
bool valve2 = false;
bool pump = true;
final formkey1 = GlobalKey<FormState>();
final formkey2 = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
