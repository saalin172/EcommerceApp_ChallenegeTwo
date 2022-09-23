import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffF0F3F4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Morning, Fahima!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xff13245C),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconlyLight.notification,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 55,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            //const SizedBox(height: 5),
            //What are you looking For
            Text(
              "What are you looking\nfor today!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            // SearchBar
            SearchBar(),
            const SizedBox(height: 15),
            // Home Card
            HomeCard(),
            const SizedBox(height: 15),
            // Shop by Department
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shop by Department",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            // CirCleButton Photoes
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageCircles(
                    imgUrl: "images/sh.png",
                    title: "Shoes",
                  ),
                  const SizedBox(width: 15),
                  ImageCircles(
                    imgUrl: "images/c1.png",
                    title: "Shaatiyal",
                  ),
                  const SizedBox(width: 15),
                  ImageCircles(
                    imgUrl: "images/shoe.png",
                    title: "Men",
                  ),
                  const SizedBox(width: 15),
                  ImageCircles(
                    imgUrl: "images/c2.png",
                    title: "Kids",
                  ),
                  const SizedBox(width: 15),
                  ImageCircles(
                    imgUrl: "images/c3.png",
                    title: "Young",
                  ),
                  const SizedBox(width: 15),
                  ImageCircles(
                    imgUrl: "images/g.png",
                    title: "babies",
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedItems(
                    img: "images/shoe.png",
                    txt: "adidas checkered",
                    tx2: "Shoes for men",
                  ),
                  const SizedBox(width: 15),
                  RecommendedItems(
                    img: "images/c1.png",
                    txt: "Surwalada",
                    tx2: "Yar yar wa wayn",
                  ),
                  const SizedBox(width: 15),
                  RecommendedItems(
                    img: "images/c2.png",
                    txt: "Mossimo Dutti",
                    tx2: "Shirt for men",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
