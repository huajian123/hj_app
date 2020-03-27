import 'package:flutter/material.dart';
import 'router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String root = "/";
  static String loginPage = "/login";
  static String loginAPage = "/loginA";
  static String homePage = "/home";
  // 路由配置
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("找不到路由");
    });

    // 配置路由
    router.define(loginPage, handler: loginHander);

    // 配置路由
    router.define(homePage, handler: homePageHander);
  }
}
