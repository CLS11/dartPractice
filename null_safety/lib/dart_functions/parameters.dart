/*PARAMETERS IN DART, CLASSIFIED INTO:
required POsitional Parameters
Optional Positional Paramaters
Required named Parameters
Optional named Parameters*/

void main(List<String> arguments ){
  requiredPositional(1, 4);
  optionalPositional(12);
  requiredNamed(a: 2, b: 4);
  optionalNamed(a: 40, b: 50);

}
void requiredPositional(int a, int b) => print('$a, $b');
//similar to what are used in C language with setbacks
//must be set when the functions get called
void optionalPositional([int a= 6, int b= 10]) => print('$a $b'); 
//not necessary to assign values while calling a funtion
//value must be provided otherwise null is assigned
void requiredNamed({required int a, required int b}) => print('$a, $b');

void optionalNamed({int a = 5, int b = 10}) => print('$a $b');

void nameHybrid({required int a, int b = 10}) => print('$a $b');

//required parameters need to be declaraed first followed by named parameters 
