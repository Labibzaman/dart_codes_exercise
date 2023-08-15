void main (){
var obj = MObile();
obj.myname();
obj.yourname('Raihan');

print(obj.addtwoNUmbers(20, 30));
obj.addThreeNumbers(20, 30, 50);




}

class MObile{
  myname(){
    print('My name is Labib');
  }

  yourname(String name){
    print('What is your $name');
  }

  addtwoNUmbers (int x, int y){
    return x+y;
  }
  addThreeNumbers(int x, int y, int z){
    print('Your total is ${x+y+z}');
  }

}