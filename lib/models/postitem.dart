import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:p/constant.dart';

class PostItem extends StatefulWidget {

  final String image, title, description ;
  final int id, price ;
  final Color color ;
  final DocumentSnapshot documentSnapshot ;
  final String docID ;

  PostItem({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.color = Colors.grey,
    required this.description,
    required this.documentSnapshot,
    required this.docID,
  });

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kPadding),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(29),
          ),
          child: Image.asset('${widget.image}'), // image path
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kPadding/4),
          child: Text('${widget.title}', // image text
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            ),),
        ),
        Text('${widget.price}', // image price
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
