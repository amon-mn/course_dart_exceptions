
void stackStart(){

  print("Started main");
  funcOne();
  print("Finished main");

}

void funcOne(){
  print("Starded F01");

  try{
    funcTwo();
  } catch (e, s){
    print(e);
    print(s);
    rethrow;
  } finally {
    print("Chegou no finally");
  }
  print("Finished F01");


}



void funcTwo(){
  print("Started F02");
  for(int i = 0; i<=5; i++){
    print(i);
    double amount = double.parse("Not a number");


  }
  print("Finished F02");
}