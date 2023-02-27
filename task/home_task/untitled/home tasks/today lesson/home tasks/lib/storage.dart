class Storage {
  Map _database = {};

  void set<T>(T key, T value) {
    _database[key] = value;
  }

  get<T>(T key) {
    return _database[key];
  }

  storeDate<T>(T key, T value) {
    _database.addAll({key: value});
  }

  void readDate<T>(){
    _database.forEach((key, value) {
      print("key : $key, value : $value");
    });
  }

  update<T>(T value) {
    _database.updateAll((key, value) => value);
  }

  remove<T>(T key) {
    _database.remove(key);
  }

}