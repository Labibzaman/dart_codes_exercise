import 'dart:io';

void main() {
  MusicLibrar music = MusicLibrar();
  music.addsongs('Choo lo', 'The local Train');
  music.addsongs('humm jeelenge ', 'mustafa');
  print('');

  print('Welcome to My Music Library');
  print('1. Add a song');
  print('2. Remove a song');
  print('3. List all songs');
  print('4. List songs by artist');
  print('6. Search for a song by title');
  print('8. Quit');
  print('Enter your Choice');
  String? userInput8 = stdin.readLineSync();
  int usernumber8 = int.parse(userInput8!);
  if (usernumber8 == 8) {
    print('Your exited');
  } else if (usernumber8 == 1) {
    print('Enter song Name ');
    String? userSongname = stdin.readLineSync();
    print('Enter song Artist');
    String? userSongartist = stdin.readLineSync();
    music.addsongs(userSongname!, userSongartist!);
  } else if (usernumber8 == 3) {
    music.listSongs();
  } else if (usernumber8 == 2) {
    print('Enter song Name');
    String? userSong = stdin.readLineSync();
    music.removeSongs(userSong!);
    print('Removed Successfully');
  }else if (usernumber8 == 4){
    print('Your Favourite Artist Name');
    String? userArtistName = stdin.readLineSync();
    music.listbyartist(userArtistName!);
  }else if (usernumber8 == 6){
    print('Enter your song Name');
    String ? userInputSong = stdin.readLineSync();
    music.searchSong( userInputSong! );
  }
  print('');
}

class MusicLibrar {
  List<Song> songs = [];

  addsongs(String title, String artist) {
    songs.add(Song(title, artist));
  }

  void listSongs() {
    ///list All
    if (songs.isEmpty) {
      print('Music Library is empty');
    } else {
      print('Music Library');
      for (var song in songs) {
        print('${song.title} by ${song.artist}');
      }
    }
  }

  void listbyartist(String userArtistName){
    bool found = false;
    for(var song in songs){
      if (song.artist == userArtistName){
        print('${song.title} by $userArtistName');
        found = true;
      }
    }
    if(!found){
      print('no songs by this $userArtistName');
    }
  }

  void searchSong(String usersonginput){
    bool found = false;
    for(var song in songs){
      if (song.title == usersonginput){
        print('$usersonginput by ${song.artist}');
        found = true;
      }
    }
    if(!found){
      print('no songs by this $usersonginput');
    }
  }

  void removeSongs(String songName) {
    if (songs.isEmpty) {
      print('Your list is empty');
    } else {
      songs.removeWhere((Song) => Song.title == songName);
    }
  }
}

class Song {
  String title;

  String artist;

  Song(this.title, this.artist);
}
