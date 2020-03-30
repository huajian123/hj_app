import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hj_app/common/utils/util.dart';

class Login extends StatelessWidget {
  final TextEditingController _userControl = new TextEditingController();
  final TextEditingController _pwdControl = new TextEditingController();

  // logo头部
  Widget _buildLogo() {
    return Container(
      width: double.infinity,
      height: duSetHeight(140.0 + 144 + 150),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            duSetWidth(303), duSetWidth(150), duSetWidth(303), duSetWidth(140)),
        child: Container(
          width: duSetWidth(144),
          height: duSetHeight(144),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fill)),
        ),
      ),

      //child: Image.asset("assets/images/logo.png"),
    );
  }

  Widget _buildLoginForm() {
    return Text("输入框");
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1294, allowFontScaling: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_bg.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: <Widget>[
              _buildLogo(),
              _buildLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
