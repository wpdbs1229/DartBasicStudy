enum Status{
  approved,
  pending,
  rejected,
}

void mian(){
  Status status = Status.pending;

  if(status == Status.approved){
    print('승인입니다.');
  } else if(status == Status.pending){
    print('대기중입니다.');
  } else {
    print('거절입니다.');
  }
  
}