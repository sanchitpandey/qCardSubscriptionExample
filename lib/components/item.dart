import 'package:flutter/material.dart';

import '../constants.dart';

class Item extends StatelessWidget {
  String name, image, date, price;
  Color color;
  Item(this.name, this.image, this.color, this.date, {this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.network(
            image,
            height: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: kNameStyle,
          ),
          Spacer(),
          Column(
            children: [
              Text(
                date,
                style: kNameStyle,
              ),
              SizedBox(
                height: 5,
              ),
              (price == null)
                  ? Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kOrange,
                      ),
                      child: Text(
                        "Trial Period",
                        style: kNameStyle.copyWith(fontSize: 14),
                      ),
                    )
                  : Text(
                      "\$ $price",
                      style: kNameStyle.copyWith(
                          fontSize: 16, color: Colors.white70),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
