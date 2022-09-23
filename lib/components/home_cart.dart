import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 170,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Card(
          elevation: 0,
          child: Image(
            image: AssetImage("images/bj.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
