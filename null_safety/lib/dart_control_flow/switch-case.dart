void main(List<String> arguments) {
    

  //can only compare int, string or any other constant value
  var condition = 'China';
  switch (condition) {
    //if(identical(condition, 'Italy'))
    case 'Italy':
      print('Italy in italian: Italia');
      break;
    case 'Russia':
      print('Russia in russian: Rossiya');
      break;
    case 'China':
      print('China in mandarin: Zhong guo');
      break;
    case 'Denmark':
      print('Denmark in danish: Danmark');
      break;
    default:
  }
} 
 