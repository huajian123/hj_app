
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hj_app/pages/pages.dart';

/*-------登录------*/
Handler loginHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Login();
});

/// 用短信登录
Handler loginWithMessageHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return LoginWithMessage();
    });

/// 账号密码登录
Handler loginPageHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Text("主页");
});
