void main() {
    

    // variable type
    bool isSend = true;

    // runtime.Type
    var number = 20;
    var text = "i am boy";

    print(number.runtimeType);
    print(text.runtimeType);

    //자료형이 복잡한 경우에만 var 타입을 사용 
    Map<String, Map<int, List<double>>> testType1 = {};
    var testType2 = {};

    
    //var 타입의 경우 한 번 선언된 자료형에 대해서는 바꿀 수 없지만,
    //dynamic의 경우 이미 선언되었더라도 자료형 또한 여러번 바꿀 수 있다.
    dynamic dyn = 'insight tech';
    print(dyn);
    
    dyn = 10;
    print(dyn);
    

    //nullable
    String str = 'insight';

    //non-nullable
    String? str2 = null;

    //!를 붙이면 절대 null일 수 없다는 것
    print(str!);


    //final & const
    
    // 2개다 한 번 선언하면 값을 변경할 수 없음
    //final의 경우 var타입을 생략할 수 있다.
    final String test = 'test';

    final test2 = 'tetst';

    //const이 경우 buildTime 값을 알아야 하지만, final의 경우 buildTime일 때 값을 몰라두된다.
    
    final DateTime now = DateTime.now();

    // const DateTime now2 = DateTime.now(); ->코드를 작성하고 있을 때, 해당 값을 알고 있어야 함

}