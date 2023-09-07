import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  Widget information() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adidas NMD',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              Text(
                'Unpaved trails and mixed surfaces are easy\nwhen you have the traction and support you\nneed. Casual enough for the daily commute.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              )
            ],
          ),
          Spacer()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail page'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/item-1.png'))),
            ),
            information()
          ],
        ),
      ),
    );
  }
}
