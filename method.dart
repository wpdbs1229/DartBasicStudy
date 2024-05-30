void main(){
  TimesTwo tt = TimesTwo(3);

  print(tt.calculate());

  TimesFour tf = TimesFour(3);

  print(tf.calculate());
}


class TimesTwo{
  final int number;

  TimesTwo(
    this.number,
  );

  //method
  int calculate(){
    return number * 2;
  }
}


class TimesFour extends TimesTwo{

  TimesFour(
    int number
  ): super(number);
  
  @override
  int calculate(){
    return super.calculate() * 2;
  }
}