import 'archive.dart';

import 'archive.dart';

class Book extends Archive {
  Book(String id, String title, String description, int isbn, String artist,
      int price, String loc)
      : super(id, title, description, isbn, artist, price, loc);
}

class CD extends Archive {
  CD(String id, String title, String description, int isbn, String artist,
      int price, String loc)
      : super(id, title, description, isbn, artist, price, loc);
}

class TourGuide extends Archive {
  TourGuide(String id, String title, String description, int isbn,
      String artist, int price, String loc)
      : super(id, title, description, isbn, artist, price, loc);
}
