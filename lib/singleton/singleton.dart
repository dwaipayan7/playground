class Singleton1{
static Singleton1? _instance;

//privatised constructor
// Singleton1._internal(){
//   print("Singleton1 created");
// }

  Singleton1(){
    print("Singleton1 created");
  }

static Singleton1 getInstance(){

  // if(_instance == null){
  //   _instance = Singleton1._internal();
  // }

  // _instance ??= Singleton1._internal();

    return _instance!;
}

}

// Singleton1 singleton = Singleton1();

Singleton1 singleton1 = Singleton1.getInstance();
Singleton1 singleton2 = Singleton1.getInstance();
Singleton1 singleton3 = Singleton1.getInstance();
Singleton1 singleton4 = Singleton1.getInstance();