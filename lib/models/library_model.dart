class LibraryModel {
  final String playlist;
  final String artist;
  final String albums;
  final String songs;

  LibraryModel({this.albums, this.artist, this.playlist, this.songs});
}

List<LibraryModel> dummyData = [
  new LibraryModel(
    playlist: 'Playlists',
    artist: 'Artist',
    albums: 'Album',
    songs: 'Songs',
  ),
];
