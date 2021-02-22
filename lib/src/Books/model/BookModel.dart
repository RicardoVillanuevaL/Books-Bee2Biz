import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
    this.books,
  });

  List<Book> books;

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        books: List<Book>.from(json["books"].map((x) => Book.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "books": List<dynamic>.from(books.map((x) => x.toJson())),
      };
}

class Book {
  Book({
    this.title,
    this.subtitle,
    this.isbn13,
    this.price,
    this.image,
    this.url,
  });

  String title;
  String subtitle;
  String isbn13;
  String price;
  String image;
  String url;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        title: json["title"],
        subtitle: json["subtitle"],
        isbn13: json["isbn13"],
        price: json["price"],
        image: json["image"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "isbn13": isbn13,
        "price": price,
        "image": image,
        "url": url,
      };
}
