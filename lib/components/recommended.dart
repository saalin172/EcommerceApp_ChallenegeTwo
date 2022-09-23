import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems(
      {Key? key, required this.img, required this.txt, required this.tx2})
      : super(key: key);

  final String img;
  final String txt;
  final String tx2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 190,
          decoration: BoxDecoration(
            color: Color(0xffF7F9F9),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 8),
          height: 120,
          width: 190,
          decoration: BoxDecoration(
            color: Color(0xffD7DBDD),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            img,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          bottom: 0,
          top: 4,
          left: 2,
          child: Container(
            padding: EdgeInsets.all(3),
            child: Column(
              children: [
                Container(
                  //padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        IconlyBold.star,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 5),
                      Text("4.9   ")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: -5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                tx2,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "39.99 €",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 80),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: Icon(
                      IconlyLight.bag_2,
                      color: Color(0xff13245C),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
