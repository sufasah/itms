import 'package:flutter/material.dart';
import 'package:itms/kartvizit_data.dart';
import 'package:itms/kartvizit_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    KartvizitData kartvizit = KartvizitData();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Enter a phone number',
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 24.0),
              child: IconButton(
                onPressed: () async {
                  ///Arama işlemleri burada yapılabilir.
                  ///Database sorgusu yaparken await kullanmayı unutma!
                  ///Sorgudan dönen bilgileri setState metodu içinde kartvizit değişkenine ata.
                  setState(() {
                    /// Burada atama yap.
                  });
                },
                icon: Icon(Icons.search),
              ),
            )
          ],
        ),
        body: KartvizitItem(kartvizitData: kartvizit),
      ),
    );
  }
}
