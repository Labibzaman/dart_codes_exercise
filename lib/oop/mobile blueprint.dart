
void main (){
  Mobile samsungMobile =Mobile(ram: 8, rom: 128, battery: 5000, camera: 108);
  print(samsungMobile.ram) ;
  print(samsungMobile.MusicPlay());

Mobile s21 =Mobile(ram: 12, rom: 256, battery: 4100, camera: 200);
s21.internet();

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

class AiMobile extends Mobile{
  AiMobile({required super.ram, required super.rom, required super.battery, required super.camera});


  AiMobileArt(){
    print('this a art from ai mobile ');
  }

}