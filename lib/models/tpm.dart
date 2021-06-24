import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:p/models/postitem.dart';

import '../constant.dart';

// class Post extends StatefulWidget {
//   const Post({Key? key}) : super(key: key);
//
//   @override
//   _PostState createState() => _PostState();
// }
//
// class _PostState extends State<Post> {
//   @override
//   Widget build(BuildContext context) {
Widget Post() {
    return Container(
      height: 400,
      // TODO: Mediaquery로 바꾸기
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("Products")
            .snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Center(child: CircularProgressIndicator())
              : GridView.builder(
            padding: EdgeInsets.all(16.0),
            itemCount: snapshot.data!.docs.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: kPadding,),
            itemBuilder: (context, index) {
              DocumentSnapshot data = snapshot.data!.docs[index];
              return PostItem(
                id: data['id'],
                price: data['price'],
                image: data['image'],
                title: data['title'],
                description: data['description'],
                docID: data.id,
                documentSnapshot: data,
              );
            },
          );
        },
      ),
    );
  }
// }
