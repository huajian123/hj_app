import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  final TextEditingController _userControl=new TextEditingController();
  final TextEditingController _pwdControl=new TextEditingController();



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1294, allowFontScaling: true);
    return Scaffold(
      appBar: AppBar(),
      body: Text("测试"),
    );
  }
}
