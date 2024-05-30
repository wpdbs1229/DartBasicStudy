void main(){
 
  print(addNumbers(21, 20));
  print(addNumbers(21, 20, 11));
  
  addNumbers2(y: 2, x: 1, z: 3);
  addNumbers3(17, y: 23,);

  Operation operation = add;
  int result = operation(10, 20, 30);
  print(result);

  operation = subtract;
  int result2 = operation(10, 20, 30);
  print(result2);

  int result3 = calculate(30, 40, 50, add);
  print(result3);

}

// 3개의 숫자를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument - 매개변수
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터

String addNumbers(int x,int y, [int z = 0]){
  
  print('addNumbers 실행');

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');
  

  if(sum % 2 ==0){
    return '짝수 입니다.';
  } else {
    return'홀수 입니다.';
  }

}


// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
addNumbers2({
  required int x,
  required int y,
  int z = 30,
}){
  
  print('addNumbers2 실행');

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');
  

  if(sum % 2 ==0){
    print('짝수 입니다.');
  } else {
    print('홀수 입니다.');
  }
}

// 혼합, Arrow func
addNumbers3(int x,{
  required int y,
  int z = 30,
}) => x + y + z;

typedef Operation = int Function(int x, int y, int z);


int add (int x, int y, int z) => x + y + z;
int subtract(int x, int y, int z) => x - y - z;


int calculate(int x, int y , int z, Operation operation){
  return operation(x,y,z);
}