void main(){
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('redVelvet');

  bts.sayName();
  redVelvet.sayName();

  print(bts is IdolInterface);
  print(bts is BoyGroup);

  print(redVelvet is IdolInterface);
  print(redVelvet is GirlGroup);
}

//interface -> 구현체에게 규칙을 강조하기 위한것
//abstract -> 인스턴스화 하지 않는다.
abstract class IdolInterface{
  String name;

  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface{

  String name;

  BoyGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface{
  String name;

  GirlGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}