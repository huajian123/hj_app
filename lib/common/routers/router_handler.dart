
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hj_app/pages/pages.dart';

/*-------登录------*/
Handler loginHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Text("登录页");
});

/// 用短信登录
Handler loginWithMessageHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return LoginWithMessage();
    });

Handler homePageHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Text("主页");
});
