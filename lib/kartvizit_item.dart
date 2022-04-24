import 'package:flutter/material.dart';
import 'package:itms/kartvizit_data.dart';

class KartvizitItem extends StatelessWidget {
  KartvizitData kartvizitData;
  KartvizitItem({Key key, @required this.kartvizitData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            kartvizitData.getImage(),
            SizedBox(height: 30),
            Row(
              children: [
                Column(
                  children: [
                    Text(kartvizitData.nameSurname),
                    Text(kartvizitData.title),
                    Text(kartvizitData.company),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: kartvizitData.spaceIconText),
                      Text(kartvizitData.email),
                    ],
                  ),
                  SizedBox(height: kartvizitData.rowSpace),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: kartvizitData.spaceIconText),
                      Text(kartvizitData.phone),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  SizedBox(height: kartvizitData.rowSpace),
                  Row(
                    children: [
                      Icon(Icons.link),
                      SizedBox(width: kartvizitData.spaceIconText),
                      Text(kartvizitData.website),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  SizedBox(height: kartvizitData.rowSpace),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(width: kartvizitData.spaceIconText),
                      Flexible(
                        child: Text(kartvizitData.address),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
