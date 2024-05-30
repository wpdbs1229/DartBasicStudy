import 'dart:ffi';


void main(){
  _Idol blackPink = _Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );

  // Idol blackPink2 = const Idol(
  //   '블랙핑크',
  //   ['지수', '제니', '리사', '로제']
  // );

  //인스턴스를 생성할 때, 왜 const로 선언하면 왜 true가 나오고 const로 선언하지 않으면 왜 fales가 나올까?


  // 2. const 객체 비교:

  // 두 Idol 객체 blackPink와 blackPink2는 모두 const 키워드로 선언되었습니다.
  // const 객체는 동일한 값을 가진 경우 동일한 객체로 참조됩니다.
  // 즉, blackPink와 blackPink2는 동일한 값을 가지고 있기 때문에 true를 출력합니다.
  
  // 3. const vs 일반 객체 비교:

  // const 객체가 아닌 일반 객체는 런타임에 값을 변경할 수 있기 때문에 비교 시 항상 새로운 객체로 간주됩니다.
  // 따라서 const 키워드를 사용하지 않고 생성된 두 개의 객체는 비록 동일한 값을 가지더라도 서로 다른 객체로 취급되어 false를 출력합니다.

  // 4. const 객체의 장점:

  // 불변성: 값이 변경되지 않으므로 코드 안정성을 높일 수 있습니다.
  // 성능 향상: 컴파일러가 객체를 최적화하여 성능을 향상시킬 수 있습니다.
  // 메모리 효율: 동일한 값을 가진 객체는 하나만 메모리에 저장되므로 메모리 사용량을 줄일 수 있습니다.
  // print(blackPink2 == blackPink);

  blackPink.sayHello();
  blackPink.introduce();
  
  //setter
  // blackPink.firstMember = '지은';
  // //getter
  // print(blackPink.firstMember);

  _Idol bts = _Idol.fromList([
    ['RM','진','슈가','제이홉','지민','뷔','정국'],
    'BTS',
  ]);


  bts.sayHello();
  bts.introduce();
  
}
//Immutable Programing
//언더스코어 _ 를 붙이면 private 한 클래스로 만들어진다.
class _Idol{
    //final을 추가시 Immutalbe programming이 가능
    final String name;
    final List<String> members;

    //const를 붙이면 Immutable programming이 가능
    const _Idol(this.name, this.members); 

    _Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];
    
    //getter
    String get firstMember {
      return this.members[0];
    }

    //setter
    set firstMember(String name){
      this.members[0] = name;
    }

    void sayHello(){
      print('안녕하세요 ${this.name} 입니다.');
    }

    void introduce(){
      print('저희 멤버는 ${this.members}가 있습니다.');
    }
}