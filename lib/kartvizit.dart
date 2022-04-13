import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kartvizit extends StatelessWidget {
  const Kartvizit({Key key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              getImage(),
              SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    children: [
                      Text(nameSurname),
                      Text(title),
                      Text(company),
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
                        SizedBox(width: spaceIconText),
                        Text(email),
                      ],
                    ),
                    SizedBox(height: rowSpace),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: spaceIconText),
                        Text(phone),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    SizedBox(height: rowSpace),
                    Row(
                      children: [
                        Icon(Icons.link),
                        SizedBox(width: spaceIconText),
                        Text(website),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    SizedBox(height: rowSpace),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: spaceIconText),
                        Flexible(
                          child: Text(address),
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
      ),
    );
  }
}
