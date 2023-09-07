import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String desc;
  final String imageUrl;
  const DetailPage(
      {Key? key,
      required this.desc,
      required this.imageUrl,
      required this.name})
      : super(key: key);

  Widget information() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${name}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              Text(
                '${desc}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              )
            ],
          ),
          Spacer()
        ],
      ),
    );
  }

  Widget checkoutButton() {
    return Container(
        margin: EdgeInsets.only(bottom: 53),
        width: 357,
        child: FilledButton(
          onPressed: () {},
          child: const Text('Checkout'),
        ));
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
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/${imageUrl}'),
                      fit: BoxFit.fill)),
            ),
            information(),
            Spacer(),
            checkoutButton()
          ],
        ),
      ),
    );
  }
}
