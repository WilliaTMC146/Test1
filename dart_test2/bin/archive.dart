bool yes(String id) {
  return true;
}

class Archive {
  String id = "";
  int price = 0;
  String title = "";
  String description = "";
  String artist = "";
  int isbn = 0;
  String loc = " ";

  Archive(this.id, this.title, this.description, this.isbn, this.artist,
      this.price, this.loc);

  void addData(String pid, String ptitle, String pdesc, int pisbn,
      String partistor, int pprice, String ploc) {
    id = pid;
    title = ptitle;
    description = pdesc;
    isbn = pisbn;
    artist = partistor;
    price = pprice;
    loc = ploc;
  }

  void printData() {
    print("ID: ${id}");
    print("Title: ${title}");
    print("Description: ${description}");
    if (isbn != -1) {
      print("ISBN: ${isbn}");
    }
    print("Author / Artist: ${artist}");
    print("Price: ${price}");
    print("Location: ${loc}");

    print("");
  }

  String getId() {
    return id.substring(0, id.length - 1);
  }

  int getLoc() {
    return int.parse(id.substring(id.length - 1, id.length));
  }
}
