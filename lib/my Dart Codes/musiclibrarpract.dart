import 'dart:io';

void main() {
  MusicLibrary music = MusicLibrary();
  music.loadSongs(); // Load songs from a file

  print('Welcome to My Music Library');

  while (true) {
    print('1. Add a song');
    print('2. Remove a song');
    print('3. List all songs');
    print('4. List songs by artist');
    print('6. Search for a song by title');
    print('8. Quit');
    print('Enter your Choice');
    String? userInput8 = stdin.readLineSync();
    int userChoice = int.tryParse(userInput8 ?? '') ?? 0;
    switch (userChoice) {
      case 1:
        print('Enter song Name ');
        String? userSongname = stdin.readLineSync();
        print('Enter song Artist');
        String? userSongartist = stdin.readLineSync();
        music.addSong(userSongname!, userSongartist!);
        break;
      case 2:
        print('Enter song Name');
        String? userSong = stdin.readLineSync();
        music.removeSong(userSong!);
        print('Removed Successfully');
        break;

      case 3:
        music.listSongs();
        break;

      case 4:
        print('Your Favorite Artist Name');
        String? userArtistName = stdin.readLineSync();
        music.listByArtist(userArtistName!);
        break;
      case 6:
        print('Enter your song Name');
        String? userInputSong = stdin.readLineSync();
        music.searchSong(userInputSong!);
        break;
      case 8:
        music.saveSongs(); // Save songs to a file before quitting
        print('Your exited');
        exit(0); // Exit the program
    }
  }
}

class MusicLibrary {
  List<Song> songs = [];

  void addSong(String title, String artist) {
    songs.add(Song(title, artist));
  }

  void listSongs() {
    if (songs.isEmpty) {
      print('Music Library is empty');
    } else {
      print('Music Library');
      for (int i = 0; i < songs.length; i++) {
        final song = songs[i];
        print('${i + 1}.${song.title} by ${song.artist}');
      }
    }
  }

  void listByArtist(String userArtistName) {
    bool found = false;
    for (var song in songs) {
      if (song.artist == userArtistName) {
        print('${song.title} by $userArtistName');
        found = true;
      }
    }
    if (!found) {
      print('no songs by this $userArtistName');
    }
  }

  void searchSong(String userSongInput) {
    bool found = false;
    for (var song in songs) {
      if (song.title == userSongInput) {
        print('$userSongInput by ${song.artist}');
        found = true;
      }
    }
    if (!found) {
      print('no songs by this $userSongInput');
    }
  }

  void removeSong(String songName) {
    if (songs.isEmpty) {
      print('Your list is empty');
    } else {
      songs.removeWhere((song) => song.title == songName);
    }
  }

  void loadSongs() {
    final file = File('songs.txt');
    if (file.existsSync()) {
      final lines = file.readAsLinesSync();
      songs = lines.map((line) {
        final parts = line.split(',');
        return Song(parts[0], parts[1]);
      }).toList();
    }
  }

  void saveSongs() {
    final file = File('songs.txt');
    final lines = songs.map((song) => '${song.title},${song.artist}').toList();
    file.writeAsStringSync(lines.join('\n'));
  }
}

class Song {
  String title;
  String artist;

  Song(this.title, this.artist);
}
