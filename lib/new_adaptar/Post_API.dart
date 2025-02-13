import 'dart:convert';

class POSTAPI1 {
  String getYoutubePosts() {
    return '''
    
    [
      {
        "title": "Automatic Code Generation with Flutter",
        "description": "Generate automatically"
      },
      
      {
        "title": "Azmath Application with Flutter",
        "description": "Generating"
      }
      
    ]
    
    ''';
  }
}

class POSTAPI2 {
  String getMediumPosts() {
    return '''
    
    [
    
    {
        "header": "Flutter",
        "bio": "Engineer"
      },
      
      {
        "header": "Mobile Development Engineer",
        "bio": "MOBDEV"
      }
    
    ]
    
    ''';
  }
}

//model
class Post {
  final String title;
  final String bio;

  Post({
    required this.title,
    required this.bio,
  });
}

abstract class IPostAPI {
  List<Post> getPosts();
}

//adapter pattern

class PostAPI1Adapter implements IPostAPI{

  final api = POSTAPI1();

  @override
  List<Post> getPosts() {

  final data = jsonDecode(api.getYoutubePosts()) as List;
  
  return data.map((e) => Post(title: e['title'], bio: e['description'])).toList();

  }

}

class PostAPI2Adapter implements IPostAPI{

  final api = POSTAPI2();

  @override
  List<Post> getPosts() {
   final data = jsonDecode(api.getMediumPosts()) as List;

   return data.map((e) => Post(title: e['header'], bio: e['bio'])).toList();

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