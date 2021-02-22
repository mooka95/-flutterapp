import 'package:assigment_day_1/Modal/Posts.dart';
import 'package:assigment_day_1/Services/PostsService.dart';
import 'package:assigment_day_1/Views/photoDetail.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCards extends StatefulWidget {
  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  List<Posts> _postList = new List();
  @override
  void initState() {
    super.initState();

    _getPostsFromApi();
  }

  _getPostsFromApi() async {
    _postList = await PostsService().getPostsFromApi();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page2')),
      body: ListView.builder( 
        itemCount: _postList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PhotoDetail(post: _postList[index])))
            },
            child: Container(
              child: Column(
                children: [
                  Card(
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Image.asset('assets/Images/profile.jfif',
                            height: 50, width: 50),
                        Flexible(child: Text(_postList[index].title)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
