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

// Hatayı anlamadım buraya bakalım
// class KartvizitDuzenle extends StatelessWidget {
//   KartvizitData kartvizitData;
//   KartvizitDuzenle({Key key, @required this.kartvizitData}) : super(key: key);
//   TextEditingController isimSoyisim = TextEditingController();
//   TextEditingController title = TextEditingController();
//   TextEditingController company = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   TextEditingController link = TextEditingController();
//   TextEditingController location = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     KartvizitData kartvizit = KartvizitData();
//     return SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height: 20),
//             SizedBox(height: 30),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text("İsim Soy isim:"),
//                         TextField(
//                           controller: isimSoyisim,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text("title: "),
//                         TextField(
//                           controller: title,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text("company: "),
//                         TextField(
//                           controller: company,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ),
//             SizedBox(height: 40),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.email),
//                       SizedBox(width: 10.0),
//                       Text("email: "),
//                       TextField(
//                         controller: email,
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 10.0),
//                   Row(
//                     children: [
//                       Icon(Icons.phone),
//                       SizedBox(width: kartvizitData.spaceIconText),
//                       Text("phone: "),
//                       TextField(
//                         controller: phone,
//                       )
//                     ],
//                     mainAxisAlignment: MainAxisAlignment.start,
//                   ),
//                   SizedBox(height: 10.0),
//                   Row(
//                     children: [
//                       Icon(Icons.link),
//                       SizedBox(width: 10.0),
//                       Text("website:"),
//                       TextField(
//                         controller: link,
//                       )
//                     ],
//                     mainAxisAlignment: MainAxisAlignment.start,
//                   ),
//                   SizedBox(height: 10.0),
//                   Row(
//                     children: [
//                       Icon(Icons.location_pin),
//                       SizedBox(width: 10.0),
//                       Flexible(
//                         child: Text("adress :"),
//                       ),
//                       TextField(
//                         controller: location,
//                       )
//                     ],
//                     mainAxisAlignment: MainAxisAlignment.start,
//                   ),
//                   SizedBox(height: kartvizitData.butonSpace),
//                   Row(
//                     children: [
//                       Center(
//                         child: ElevatedButton(
//                           child: Text("Kartviziti Düzenle",
//                               style: TextStyle(fontSize: 20)),
//                           onPressed: () {
//                             kartvizitData.nameSurname = isimSoyisim.text;
//                             kartvizitData.title = title.text;
//                             kartvizitData.company = company.text;
//                             kartvizitData.email = email.text;
//                             kartvizitData.phone = phone.text;
//                             kartvizitData.website = link.text;
//                             kartvizitData.address = location.text;
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//                 crossAxisAlignment: CrossAxisAlignment.start,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

