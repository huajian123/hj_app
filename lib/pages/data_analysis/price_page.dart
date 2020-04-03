import 'package:flutter/material.dart';
import 'package:hj_app/common/utils/util.dart';

class PricePage extends StatefulWidget {
  @override
  _PricePageState createState() => _PricePageState();
}

class _PricePageState extends State<PricePage>  with SingleTickerProviderStateMixin{
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("价格模块"),
        bottom: TabBar(
          controller: _tabController,
          labelColor: ColorsUtil.hexColor(0xDB3535),
          indicatorColor: ColorsUtil.hexColor(0xDB3535),
          unselectedLabelColor: ColorsUtil.hexColor(0x222222),
          indicatorWeight: 2,
          indicator: MyUnderlineTabIndicator(
              borderSide: BorderSide(
                  width: 2.0, color: ColorsUtil.hexColor(0xDB3535)),
              lineWidth: duSetWidth(120)),
          indicatorSize: TabBarIndicatorSize.label,
          // 指示器的大小计算方式，以文本方式
          isScrollable: true,
          //labelPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          labelStyle: TextStyle(fontSize: duSetFontSize(30)),
          tabs: <Widget>[
            Tab(text: '检修（600万吨）'),
            Tab(text: '正常（21000万吨）'),
            Tab(text: '正常（21000万吨）'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
         Text("1"),
         Text("2"),
         Text("3"),
        ],
      ),
    );
  }
}
