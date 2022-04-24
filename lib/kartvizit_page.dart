import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itms/kartvizit_data.dart';
import 'package:itms/kartvizit_item.dart';

class KartvizitPage extends StatelessWidget {
  const KartvizitPage({Key key}) : super(key: key);

  final pageTitle = 'Kartvizit';

  @override
  Widget build(BuildContext context) {
    KartvizitData kartvizit = KartvizitData();
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: KartvizitItem(kartvizitData: kartvizit),
    );
  }
}
