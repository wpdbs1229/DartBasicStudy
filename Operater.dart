void main(){

  //??= null이라면 해당 값으로 바꿔라
  double? number = 1.0;

  number ??= 12.0;
  
  print(number);

  number = null;

  number ??= 14.0;

  print(number);

  int number2 = 1;

  print(number is int);
  print(number is! int);
  

}