import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:hj_app/common/entitys/entitys.dart';
import 'package:hj_app/common/utils/Iconfont.dart';
import 'package:hj_app/common/utils/util.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userControl = new TextEditingController();
  final TextEditingController _pwdControl = new TextEditingController();
  final _user = UserEntity();
  final _phoneFocus = FocusNode();
  final _passwordFocus = FocusNode();
  var _isLoading = false;
  var _showCleanBtn = false;
  var _showPasswordFlag = false;

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
    );
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: duSetWidth(60)),
      child: Form(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  top: duSetHeight(25.0),
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  controller: _userControl,
                  onChanged: (value) {
                    print(_showCleanBtn);
                    setState(() {
                      value == ""
                          ? _showCleanBtn = false
                          : _showCleanBtn = true;
                    });
                  },
                  cursorColor: Colors.white,
                  // 改变光标颜色
                  cursorWidth: 1.0,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  maxLengthEnforced: true,
                  decoration: InputDecoration(
                    contentPadding: _showCleanBtn
                        ? EdgeInsets.only(
                            left: duSetWidth(60.0), top: duSetHeight(28.0))
                        : EdgeInsets.only(left: duSetWidth(60.0)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                    ),
                    suffixIcon: _showCleanBtn
                        ? IconButton(
                            icon: Icon(Icons.clear, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                _userControl.clear();
                                _showCleanBtn = false;
                              });
                            },
                          )
                        : null,
                    hintText: "请输入手机号",
                    hintStyle: TextStyle(
                      color: ColorsUtil.hexColor(0x999999),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  top: duSetHeight(22.0),
                  child: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  // 改变光标颜色
                  cursorWidth: 1.0,
                  style: TextStyle(color: Colors.white),
                  obscureText: !_showPasswordFlag,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: duSetWidth(60.0), top: duSetHeight(24.0)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 255, 255, 0.3)),
                    ),
                    hintText: "请输入密码",
                    hintStyle: TextStyle(
                      color: ColorsUtil.hexColor(0x999999),
                    ),
                    suffixIcon: _showPasswordFlag
                        ? IconButton(
                            icon: Icon(
                              Iconfont.openeyes,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _showPasswordFlag = false;
                              });
                            },
                          ):IconButton(
                      icon: Icon(
                        Iconfont.eyeOff,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _showPasswordFlag = true;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBtns(context) {
    return Container(
      margin: EdgeInsets.only(
          top: duSetHeight(30.0),
          left: duSetWidth(60.0),
          right: duSetWidth(60.0)),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Text(
                  "立即注册",
                  style: TextStyle(
                    color: ColorsUtil.hexColor(0xcccccc),
                  ),
                ),
                onTap: () => print("立即注册"),
              ),
              GestureDetector(
                child: Text(
                  "忘记密码",
                  style: TextStyle(
                    color: ColorsUtil.hexColor(0xcccccc),
                  ),
                ),
                onTap: () => print("忘记密码"),
              ),
            ],
          ),
          SizedBox(
            height: duSetHeight(40.0),
          ),
          Container(
            width: double.infinity,
            height: duSetHeight(88.0),
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              highlightColor: Theme.of(context).primaryColor,
              colorBrightness: Brightness.dark,
              splashColor: Theme.of(context).primaryColor,
              child: Text(
                "登录",
                style: TextStyle(fontSize: duSetFontSize(34.0)),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {
                print("登录");
              },
            ),
          ),
          SizedBox(
            height: duSetHeight(30.0),
          ),
          GestureDetector(
            child: Text(
              "使用短信验证码登录",
              style: TextStyle(
                color: ColorsUtil.hexColor(0xcccccc),
              ),
            ),
            onTap: () => print("使用短信验证码登录"),
          ),
        ],
      ),
    );
  }

  Widget _buildOtherWayTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/images/line_left.png"),
        SizedBox(
          width: duSetWidth(30),
        ),
        Text(
          "其他快捷登录",
          style: TextStyle(
            color: ColorsUtil.hexColor(0xcccccc),
            fontSize: duSetFontSize(24),
          ),
        ),
        SizedBox(
          width: duSetWidth(30),
        ),
        Image.asset("assets/images/line_right.png"),
      ],
    );
  }

  Widget _buildOtherWayBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: duSetWidth(135)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset("assets/images/zhifubao.png"),
              SizedBox(
                height: duSetHeight(12),
              ),
              Text(
                "支付宝",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset("assets/images/weixin.png"),
              SizedBox(
                height: duSetHeight(12),
              ),
              Text(
                "微信",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset("assets/images/qq.png"),
              SizedBox(
                height: duSetHeight(12),
              ),
              Text(
                "qq",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1294, allowFontScaling: true);
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
            _buildLoginForm(),
            _buildBtns(context),
            SizedBox(
              height: duSetHeight(119),
            ),
            _buildOtherWayTitle(),
            SizedBox(
              height: duSetHeight(50),
            ),
            _buildOtherWayBtn(),
          ],
        ),
      ),
    );
  }
}
