import 'package:flutter/material.dart';
import 'package:hj_app/common/utils/Iconfont.dart';
import 'package:hj_app/common/utils/screen.dart';
import 'package:hj_app/common/utils/util.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _userControl = new TextEditingController();
  final TextEditingController _pwdControl = new TextEditingController();
  var _showCleanBtn = false;
  var _showPasswordFlag = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text("注册"),
        ),
        body:Text("123"),
    );
  }
}
