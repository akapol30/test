import 'package:comment/comment_values.dart';
import 'package:flutter/material.dart';
import 'postcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe"),
      ),
      body: ListView.builder(
        itemCount: CommentValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: CommentValues.posts[index]);
        },
      ),
    );
  }
}