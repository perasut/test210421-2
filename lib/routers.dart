import 'package:flutter/material.dart';
import 'package:test210421/screens/dashboard/dashboard_screen.dart';
import 'package:test210421/screens/lockscreen/lock_screen.dart';
import 'package:test210421/screens/login/login_screen.dart';
import 'package:test210421/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/dashboard": (BuildContext context) => DashboardScreen(),
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/lockscreen": (BuildContext context) => LockScreen(),
  "/login": (BuildContext context) => LoginScreen(),
};
