import 'package:flutter/material.dart';

class ImageCircles extends StatelessWidget {
  const ImageCircles({Key? key, required this.imgUrl, required this.title})
      : super(key: key);

  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            Text(" $title"),
          ],
        ),
      ],
    );
  }
}
