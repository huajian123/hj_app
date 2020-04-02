import 'package:flutter/material.dart';
import 'router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String root = "/";

  /*-----登录--------*/
  static String loginPage = "/login";
  static String loginWithMessage= "/loginWithMessage";
  static String SMSVerificationCode= "/SMSVerificationCode";
  static String register= "/register";

  static String homePage = "/home";

  /*-----数据分析--------*/
  static String dataAnalysis= "/dataAnalysis";


  // 路由配置
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("找不到路由");
    });

    /*-----登录--------*/
    router.define(loginPage, handler: loginHander);
    router.define(loginWithMessage, handler: loginWithMessageHander);
    router.define(SMSVerificationCode, handler: SMSVerificationCodeHander);
    router.define(register, handler: registerHander);

    /*-----数据分析--------*/
    router.define(dataAnalysis, handler: dataAnalysisHander);


  }
}
