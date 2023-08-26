///Base class
class Media {

 void play(){
    print('Playing Media');
  }
}

///Derived Class
class Song extends Media{

  String? artist;

Song(this.artist); ///Constracutor to specified artist

  @override
 void play() {
    print('Playing song  by $artist');
  }
}

void main (){
  ///created one instance of Media
  Media myMedia = Media();
  myMedia.play(); ///called play method

  ///created one instance of Song
  Song mySong = Song('Taylor Swift'); ///Initializing artist name

  mySong.play(); ///called songs play method
}