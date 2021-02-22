import 'package:assigment_day_1/Modal/Posts.dart';
import 'package:dio/dio.dart';

class PostsService {
  String url = "https://jsonplaceholder.typicode.com/posts";
  Future<List<Posts>> getPostsFromApi() async {
    List<Posts> postsList = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    print(response.data.toString());
    var data = response.data;

    data.forEach((post) {
      postsList.add(Posts.fromJson(post));
    });
    return postsList;
  }
}
