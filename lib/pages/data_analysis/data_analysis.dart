import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hj_app/common/utils/color_util.dart';
import 'package:hj_app/common/utils/screen.dart';

class DataAnalysis extends StatelessWidget {
  Widget _buildTime(context) {
    return Container(
      padding: EdgeInsets.only(
        left: duSetWidth(41),
        right: duSetWidth(30),
        top: duSetHeight(30),
        bottom: duSetHeight(28),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: <Widget>[
          Text(
            "数据统计截至 2020.3.20 09:00",
            style: TextStyle(
              color: ColorsUtil.hexColor(0x999999),
              fontSize: duSetFontSize(24),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            textBaseline: TextBaseline.ideographic,
            children: <Widget>[
              Baseline(
                baseline: duSetHeight(32),
                baselineType: TextBaseline.alphabetic,
                child: Icon(
                  Icons.error_outline,
                  color: Theme.of(context).primaryColor,
                  size: duSetFontSize(28),
                ),
              ),
              SizedBox(width: duSetWidth(5),),
              Text(
                "数据说明",
                style: TextStyle(
                    textBaseline:TextBaseline.ideographic,
                    color: Theme.of(context).primaryColor,
                    fontSize: duSetFontSize(24)),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("数据分析"),
      ),
      body: Column(
        children: <Widget>[
          _buildTime(context),
        ],
      ),
    );
  }
}
