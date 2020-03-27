
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';


Handler loginHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Text("登录页");
});

Handler homePageHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Text("主页");
});
