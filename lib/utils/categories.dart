import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<Map<String, dynamic>> gridMap = [
    {
      'title': 'Jackets',
      'price': '499',
      'images': 'assets/images/fashion1.jpg',
    },
    {
      'title': 'Tops',
      'price': '599',
      'images': 'assets/images/fashion2.jpg',
    },
    {
      'title': 'Jeans',
      'price': '699',
      'images': 'assets/images/fashion3.jpg',
    },
    {
      'title': 'Skirts',
      'price': '799',
      'images': 'assets/images/fashion5.jpg',
    },
    {
      'title': 'T-Shirts',
      'price': '899',
      'images': 'assets/images/fashion5.jpg',
    },
    {
      'title': 'Fashion',
      'price': '999',
      'images': 'assets/images/fashion6.jpg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 205,
      ),
      itemCount: gridMap.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Colors.black12),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "${gridMap.elementAt(index)['images']}",
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 5,
                    child: Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Under',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Icon(
                      Icons.currency_rupee_sharp,
                      size: 12,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${gridMap.elementAt(index)['price']}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
