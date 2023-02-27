abstract class Monster {
  String name;

  Monster(this.name);

  void attack();
}

class FireMonster implements Monster {

  @override
  void attack() {
    print("Fire Monster attacked");
  }

  @override
  String name;
  FireMonster(this.name);
}
class WaterMonster implements Monster{
  @override
  void attack() {
    print("Fire Monster attacked");
  }

  @override
  String name;
  WaterMonster(this.name);
}
class StoneMonster implements Monster{
  @override
  void attack() {
    print("Fire Monster attacked");
  }

  @override
  String name;
  StoneMonster(this.name);
}