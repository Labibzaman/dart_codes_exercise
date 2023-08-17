abstract class Letter{
  void wirte ();
}

class Labib implements Letter {
  @override
  void wirte() {
    // TODO: implement wirte
    print('hi,  i am labib this my letter i wrote');
  }
}

void main(){
  Letter labib = Labib();
  labib.wirte();


}