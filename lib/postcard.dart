import 'package:comment/inheritedpostmodel.dart';
import 'package:comment/postmodel.dart';

import 'package:flutter/material.dart';
import 'comment_values.dart';

bool _isLandscape(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.landscape;

class PostCard extends StatelessWidget {
  final PostModel postData;

  const PostCard({Key? key, required this.postData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final double aspectRatio = _isLandscape(context) ? 6 / 2 : 6 / 3;

    return Card(
      elevation: 2,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.all(4.0),
        // I created it here!
        child: InheritedPostModel(
          postData: postData,
          child: Column(
            children: const <Widget>[
              _Post(),
              Divider(color: Colors.grey),
              _PostDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Row(children: <Widget>[
      _PostImage(postData.imageURL),
      Expanded(child: _PostTitleSummaryAndTime()),
    ]);
  }
}

class _PostTitleSummaryAndTime extends StatelessWidget {
  const _PostTitleSummaryAndTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting data from inherited widget
    final PostModel postData = InheritedPostModel.of(context).postData;

    // using data retrieved from inherited widget
    final String title = postData.title;
    final String summary = postData.summary;

    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(title),
              SizedBox(height: 2.0),
              Text(summary),
            ],
          ),
          _PostTimeStamp(postData.postTimeFormatted),
        ],
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  final String imageStr;
  const _PostImage(this.imageStr, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 100, child: Image.network(imageStr));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Row(
      children: <Widget>[
        _UserImage(postData.author.image),
        _UserNameAndEmail(
          userName: postData.author.name,
          userEmail: postData.author.email,
        ),
        Expanded(
            child: Container(
                alignment: Alignment.centerRight,
                child: _PostTimeStamp(postData.postTimeFormatted))),
      ],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  final String userName;
  final String userEmail;
  const _UserNameAndEmail({Key? key, required this.userName, required this.userEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(userName),
          Text(userEmail),
          SizedBox(height: 2.0),
        ],
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  final String imageString;
  const _UserImage(this.imageString, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageString),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  final String time;
  const _PostTimeStamp(
    this.time, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(time);
  }
}
