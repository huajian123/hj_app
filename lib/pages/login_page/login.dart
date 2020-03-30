import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hj_app/common/entitys/user.dart';
import 'package:hj_app/common/utils/Iconfont.dart';
import 'package:hj_app/common/utils/util.dart';
import 'package:hj_app/common/values/values.dart';

class Login extends StatelessWidget {
  final TextEditingController _userControl = new TextEditingController();
  final TextEditingController _pwdControl = new TextEditingController();
  final _user = UserEntity();
  final _phoneFocus = FocusNode();
  final _passwordFocus = FocusNode();
  var _isLoading = false;

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: duSetWidth(60)),
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:  BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                ),
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                hintText: "请输入手机号",
                hintStyle: TextStyle(
                  color: ColorsUtil.hexColor(0x999999),
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:  BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                hintText: "请输入密码",
                hintStyle: TextStyle(
                  color: ColorsUtil.hexColor(0x999999),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
