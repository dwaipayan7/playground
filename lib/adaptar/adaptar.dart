import 'dart:convert';

class PostAPI1 {
  String getYouTubePosts() {
    return '''
    [
      {
        "title": "Automatic Code Generation with Flutter",
        "description": "Generate automatically"
      },
      {
        "title": "Azmath App Flutter",
        "description": "GenAI App"
      }
    ]
    ''';
  }
}

class PostAPI2 {
  String getMediumPosts() {
    return '''
    [
      {
        "header": "Flutter",
        "bio": "Great Work"
      },
      {
        "header": "Azmath App Flutter",
        "bio": "New"
      }
    ]
    ''';
  }
}

abstract class IPostAPI {
  List<Post> getPosts();
}

//model
class Post {
  final String title;
  final String bio;

  Post({required this.title, required this.bio});
}

//adapter

class PostAPI1Adapter implements IPostAPI {
  final api = PostAPI1();
  @override
  List<Post> getPosts() {
    final data = jsonDecode(api.getYouTubePosts()) as List;
    return data
        .map(
          (e) => Post(
            title: e['title'],
            bio: e['description'],
          ),
        )
        .toList();
  }
}


class PostAPI2Adapter implements IPostAPI {
  final api = PostAPI2();
  @override
  List<Post> getPosts() {
    final data = jsonDecode(api.getMediumPosts()) as List;
    return data
        .map(
          (e) => Post(
        title: e['header'],
        bio: e['bio'],
      ),
    )
        .toList();
  }
}

class PostAPI implements IPostAPI{
  final api1 = PostAPI1Adapter();
  final api2 = PostAPI2Adapter();
  @override
  List<Post> getPosts() {
    return api1.getPosts() + api2.getPosts();

  }

}