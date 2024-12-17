import 'package:advance_flutter_app/screen/detailpage/page/detailpage.dart';
import 'package:advance_flutter_app/screen/home/page/homepage.dart';
import 'package:flutter/material.dart';

class AllRoutes
{
  static const String home = "/";
  static const String detail = "detail";

  static Map<String, Widget Function(BuildContext)> appRoutes =
  {
    "/" : (context) =>   const Homepage(),
    "detail" : (context) =>   const Detailpage(),

  };

}