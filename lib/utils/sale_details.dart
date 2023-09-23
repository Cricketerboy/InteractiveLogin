import 'package:flutter/material.dart';

class SaleDetails extends StatefulWidget {
  const SaleDetails({super.key});

  @override
  State<SaleDetails> createState() => _SaleDetailsState();
}

class _SaleDetailsState extends State<SaleDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 242, 242),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sale Ends In : ',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 8),
          Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 184, 104),
            ),
            child: Text('10'),
          ),
          SizedBox(width: 6),
          Text(" :"),
          SizedBox(width: 8),
          Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 184, 104),
            ),
            child: Text('55'),
          ),
          SizedBox(width: 6),
          Text(" :"),
          SizedBox(width: 8),
          Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 184, 104),
            ),
            child: Text('23'),
          ),
        ],
      ),
    );
  }
}
