import 'package:comment/postmodel.dart';
import 'package:comment/usermodel.dart';

class CommentValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "ISSI",
      email: "issi@gmail.com",
      followers: 123,
      joined: DateTime(2019, 4, 30),
      posts: 12,
      image: "https://picsum.photos/seed/issi@gmail.com/200",
    ),
    UserModel(
      id: "2",
      name: "Mark",
      email: "Mark@gmail.com",
      followers: 456,
      joined: DateTime(2018, 5, 30),
      posts: 13,
      image: "https://picsum.photos/seed/Mark@gmail.com/200",
    ),
    UserModel(
      id: "3",
      name: "mochi",
      email: "mochi@gmail.com",
      followers: 789,
      joined: DateTime(2017, 6, 30),
      posts: 14,
      image: "https://picsum.photos/seed/mochi@gmail.com/200",
    ),
  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "fried rice",
      summary: "It is rice that contains many nutrients and many vegetables.",
      body: "How many kilocalories are there?",
      imageURL: "https://picsum.photos/seed/fried_rice/200",
      postTime: DateTime(2019, 6, 29),
      reacts: 123,
      views: 456,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Tom Yum Goong",
      summary: "It's a broth with a tangy flavor of lemon  and spicy flavor.",
      body: "How many kilocalories are there?",
      imageURL: "https://picsum.photos/seed/Tom_Yum_Goong/200",
      postTime: DateTime(2019, 4, 13),
      reacts: 321,
      views: 654,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "fried chicken",
      summary: "Delicious crisps of batter and chicken meat.",
      body: "How many kilocalories are there?",
      imageURL: "https://picsum.photos/seed/fried_chicken/200",
      postTime: DateTime(2019, 1, 12),
      reacts: 213,
      views: 546,
    ),
  ];
}
