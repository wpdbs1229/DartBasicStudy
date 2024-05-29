void main(){
  //------------------------------For----------------------------------
  List<int> list = [1,2,3,4,5,6];
  
  for(int number in list){
    print(number);
  }

  int total = 0;

  while(total < 10 ){
    total++;
    print(total);
  }
  // cotinue;
  for(int i = 0; i < 10; i++){
    total += 1;
    if(total ==5){
      print(1);
      continue;
    }
    print(i); 
  }
}