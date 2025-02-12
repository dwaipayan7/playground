class Singleton2{

  static Singleton2? _instance;

  Singleton2._internal(){
    print("Singleton2 created");
  }

  static get instance{
    _instance ??= Singleton2._internal();
    return _instance;
  }

}