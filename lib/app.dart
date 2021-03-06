import 'package:fluro/fluro.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:hj_app/common/provide/provider.dart';
import 'package:hj_app/common/routers/application.dart';
import 'package:hj_app/common/routers/routes.dart';
import 'common/values/values.dart';
import 'config.dart';
import 'package:flutter/material.dart';

import 'pages/pages.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 路由
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
    return Store.init(
        context: context,
        child: MaterialApp(
          title: AppConfig.appName,
          onGenerateRoute: Application.router.generator,
          debugShowCheckedModeBanner: true,
          theme: AppTheme.theme,
          home: Login(),
        ));
  }
}
