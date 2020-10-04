import 'package:assignment/constants.dart';
import 'package:flutter/material.dart';

import 'components/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Subscriptions",
                      style: kNameStyle.copyWith(fontSize: 20),
                    ),
                    Spacer(),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 20,
                child: Column(
                  children: [
                    Item(
                      "Netflix",
                      "https://static-ssl.businessinsider.com/image/576837b852bcd01a008ca3bf-512/ue0yamyo.jp2",
                      Colors.black,
                      "30 MAY",
                    ),
                    Item(
                      "Disney Plus",
                      "https://www.reviews.org/au/app/uploads/2019/11/disney-plus-logo.png",
                      kBlue,
                      "28 MAY",
                      price: "22.00",
                    ),
                    Item(
                      "Spotify",
                      "https://icons-for-free.com/iconfiles/png/512/music+network+social+spotify+icon-1320194836353381533.png",
                      kGreen,
                      "30 JUL",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 100,
          color: kGrey,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total expenses (Per month)",
                  style: kNameStyle.copyWith(color: kLightText),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ 44.00",
                  style: kNameStyle.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
