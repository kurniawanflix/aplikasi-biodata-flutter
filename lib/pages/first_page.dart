import 'package:flutter/material.dart';
import "package:biodata_flutter/theme.dart";
import 'package:url_launcher/url_launcher.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      return Expanded(
        child: Center(
          child: Container(
            width: 280,
            height: 154,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/profile.png',
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget buildBottomSheet() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Muhammad David Kurniawan\n'
              '_______________________________',
              style: blackTextStyle.copyWith(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'NIM\t\t\t\t\t\t\t\t\t\t: A11.2020.12480\nHobby\t\t\t\t\t\t: Menonton Sepakbola\nDeskripsi\t: Mahasiswa',
              // textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
                wordSpacing: 5,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  launch(
                      "mailto:111202012480@mhs.dinus.ac.id.in?subject=New Flutter Project&body=Congrats, David!");
                },
                style: ElevatedButton.styleFrom(
                  primary: kYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                ),
                child: Text(
                  'Email',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  launch("tel:085290004925");
                },
                style: ElevatedButton.styleFrom(
                  primary: kYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                ),
                child: Text(
                  'Phone Number',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () async{
                  launch("https://goo.gl/maps/Q6SvDrbPsnqTWKmS9");
                },
                style: ElevatedButton.styleFrom(
                  primary: kYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                ),
                child: Text(
                  'Address',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildImage(),
          buildBottomSheet(),
        ],
      ),
    );
  }
}