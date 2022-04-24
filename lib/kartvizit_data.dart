import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KartvizitData {
  final spaceIconText = 10.0;
  final rowSpace = 10.0;
  final nameSurname = 'İsim SOYİSİM';
  final title = 'Ünvan Chief Executive Officer';
  final company = 'Çalıştığı Şirket ismi aaaaaaaaaaa bbbbbbbbbb ccccccccccc';
  final email = 'email@hotmail.com';
  final phone = '+90 555 555 55 55';
  final website = 'www.examplewebsite.com';
  final address =
      'aaaaaaaa mah. bbbbbbbbbbb. sok. cccccccccccc apt. kat:x daire:y';
  final pageTitle = 'Kartvizit';

  getImage() {
    return Image(
      image: NetworkImage(
        "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
      ),
      width: 300,
      height: 300,
    );
  }
}
