void main(){

  //---------------------------------------List------------------------------------------
  List<String> blackpink = ['제니', '지수', '로제', '리사'];
  List<int> numbers = [1,2,3,4,5];

  print(blackpink);
  print(numbers);

  print(blackpink[0]);
  print(blackpink[1]);

  print(blackpink.length);

  blackpink.add('지은');
  blackpink.remove('제니');

  print(blackpink);

  print(blackpink.indexOf('지은'));


//-------------------------------------------Map-----------------------------------------------------

  Map<String, String> dictionary = {
    'Harry Potter' : '해리포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤리미온느 그레인저'
  };

  print(dictionary);

  Map<String, bool> isHarryPotter = {
    'Harry Potter' : true,
    'Ron Weasley' : true,
    'Ironman' : false
  };

  print(isHarryPotter);

  isHarryPotter.addAll({
    'Spiderman': false
  });

  print(isHarryPotter);
  print(isHarryPotter['Ironman']);

  isHarryPotter['Hulk'] = false;

  print(isHarryPotter);

  isHarryPotter['Ironman'] = true;

  print(isHarryPotter);

  isHarryPotter.remove('Ironman');

  print(isHarryPotter);

  print(isHarryPotter.keys);

  //-----------------------------SET----------------------------------

  final Set<String> names = {
    'Lee',
    'Park',
    'Kim'
  };

  print(names);

  names.add('choi');
  
  print(names);

  names.remove('choi');
  
  print(names);

}