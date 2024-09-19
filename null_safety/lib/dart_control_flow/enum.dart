enum Condition { Italy, China, Russia, Denmark }
//special class used to represent a fixed number of constant values
//Helps in ecapsulating a value directly into class and access it like a static field

//Re-implementing swict case using enum

void main(List<String> arguments) {
  var condition = Condition.China;
  switch (condition) {
    //if(identical(condition, 'Italy'))
    case Condition.Italy:
      print('Italy in italian: Italia');
      break; //require a break, continue, throw, return at the ned of case clause
    case Condition.Russia:
      print('Russia in russian: Rossiya');
      break; 
      //continue Russia;
      //Russia:
    case Condition.China:
      print('China in mandarin: Zhong guo');
      break;
    case Condition.Denmark:
      print('Denmark in danish: Danmark');
      break;
    default:
  }
}
