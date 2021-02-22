import 'package:assigment_day_1/Modal/Posts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoDetail extends StatefulWidget {
  final Posts post;
  PhotoDetail({@required this.post});

  @override
  _PhotoDetailState createState() => _PhotoDetailState();
}

class _PhotoDetailState extends State<PhotoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page3')),
      body: Center(child: Text(widget.post.body)),
    );
  }
}
