//Top level variables can be accessed anywhere in the entire file
//Usually declared outside of the class
int t = 0;

//Top level nullable variables can be left unassigned 
//while the time of declaration
int? nullableToplevel;
//late to assign the value later on
late int nonNullableTopLevel;

void main(List<String> arguments){
  t = 1000; 
}
//Can also be termed as or is similar to **GLOBAL VARIABLE**