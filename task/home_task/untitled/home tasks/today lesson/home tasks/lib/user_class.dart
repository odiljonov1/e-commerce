Map _database = {};

void set<T>(T key, T value) {
  _database[key] = value;
}

get<T>(T key) {
  return _database[key];
}


abstract class User {
  String name;
  String roll;

  User(this.name,this.roll);

}
class SuperUser implements User{
  @override
  String name;

  @override
  String roll;

  SuperUser(this.name,this.roll);

}
class Client implements User{

  @override
  String name;

  @override
  String roll;
  Client(this.name, this.roll);

}
class Agent implements User{
  @override
  String name;

  @override
  String roll;
  Agent(this.name,this.roll);
}

class AuthService<T>{

  signIn<T>(T name) {
    print("$name kirdi");
  }

  signUp<T>(T name) {
    print("$name ro'yhatdan o'tdi");

  }

  String logOut<T>(T name) {
    return ("$name chiqib ketdi");

  }

  deleteAccount<T>(T name){
    print("o'chirildi");
  }
}
