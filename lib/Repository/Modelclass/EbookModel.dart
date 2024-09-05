class EbookModel {
  EbookModel({
      this.bookId, 
      this.title, 
      this.imgUrl, 
      this.pages, 
      this.size, 
      this.year, 
      this.publisher, 
      this.language, 
      this.type, 
      this.authors,});

  EbookModel.fromJson(dynamic json) {
    bookId = json['bookId'];
    title = json['title'];
    imgUrl = json['imgUrl'];
    pages = json['pages'];
    size = json['size'];
    year = json['year'];
    publisher = json['publisher'];
    language = json['language'];
    type = json['type'];
    authors = json['authors'];
  }
  String? bookId;
  String? title;
  String? imgUrl;
  String? pages;
  String? size;
  String? year;
  String? publisher;
  String? language;
  String? type;
  String? authors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bookId'] = bookId;
    map['title'] = title;
    map['imgUrl'] = imgUrl;
    map['pages'] = pages;
    map['size'] = size;
    map['year'] = year;
    map['publisher'] = publisher;
    map['language'] = language;
    map['type'] = type;
    map['authors'] = authors;
    return map;
  }
  static List<EbookModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => EbookModel.fromJson(value)).toList();
  }

}