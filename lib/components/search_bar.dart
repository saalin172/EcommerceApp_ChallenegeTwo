import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(0xFFF0F2F5), //Color(0xffe3e3e6),
            borderRadius: BorderRadius.circular(14),
          ),
          child: SizedBox(
            width: 280,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 15),
                border: InputBorder.none,
                prefixIcon: Icon(
                  IconlyLight.search,
                  size: 30,
                ),
                hintText: "Search Products",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xFFF0F2F5), //Color(0xffe3e3e6),
          ),
          child: Icon(
            IconlyLight.scan,
            size: 30,
          ),
        ),
      ],
    );
  }
}
