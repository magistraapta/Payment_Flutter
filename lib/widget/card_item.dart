import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:payment/pages/detail_page.dart';

class CardItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int price;
  const CardItem({Key? key, required this.imageUrl, required this.name,required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 357,
            height: 300,
            // decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage('assets/item-1.png'))),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 337,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/${imageUrl}'), // Replace with your image asset path
                          fit: BoxFit.cover, // You can adjust the fit as needed
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '${name}',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '${price}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer()
              ],
            ),
            // color: Colors.green,
          ),
        ),
      ),
    );
  }
}
