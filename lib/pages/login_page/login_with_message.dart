import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:hj_app/common/utils/util.dart';

class LoginWithMessage extends StatelessWidget {
  Widget _buildLogo() {
    return Hero(
      tag: "logo",
      child: Container(
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
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            _buildLogo(),
          ],
        ),
      ),
    );
  }
}
