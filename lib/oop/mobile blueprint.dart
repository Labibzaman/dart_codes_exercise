
void main (){
  Mobile samsungMobile =Mobile(ram: 8, rom: 128, battery: 5000, camera: 108);
  print(samsungMobile.ram) ;
  print(samsungMobile.MusicPlay());

Mobile s21 =Mobile(ram: 12, rom: 256, battery: 4100, camera: 200);
s21.internet();
AiMobile samsungAiMOdel = AiMobile(ram: 45, rom: 1000, battery: 6000, camera: 100);
samsungAiMOdel.AiMobileArt();
samsungAiMOdel.goodLock();


}
abstract class ExtraFeauture {
  goodLock();
}



class Mobile{
  int ram;
  int rom;
  int camera;
  int battery;
 Mobile({required this.ram, required this.rom, required this.battery,required this.camera}){
   print('Mobile is in Now creating Mode');
 }



 String MusicPlay(){
   return'playing Music';
 }

 String internet(){
   return 'You are using internet now';
 }

 int addCalculator(int a , int b ){
   return a+b;
 }

 double avgMultiple(int x, int y,int z){
   return x+y / z;
 }


}

class AiMobile implements ExtraFeauture{
  AiMobile({required ram, required rom, required battery, required camera}){
    print('This is now owrking');
  }


  AiMobileArt(){
    print('this a art from ai mobile ');
  }

  @override
  goodLock() {
    print('this can make your phone look too good');
  }
  
  

}