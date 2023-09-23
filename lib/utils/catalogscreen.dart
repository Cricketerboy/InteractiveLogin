import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                "assets/images/fashion6.jpg",
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Fashion',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
