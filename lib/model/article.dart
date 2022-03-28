class Article{
  String author;
  String title;
  String content;
  String urlToImage;
  String PublishedAt;


//para meter
Article({
  required this.author,
   required this.content,
    required this.title,
     required this.urlToImage,
      required this.PublishedAt
});

//memetakan json objek ke model
//jika di json nya null ia akan mengeluarka nilai null / yang url jika nilai null iya akan mengeluar kan gambar seperti di link ynag di ambil dari google
factory Article.fromJson(Map<String, dynamic> json ) => Article(
  title: json["tile"] ?? "Null",
  author: json["author"] ?? "Null",
  content: json["content"] ?? "Null",
  PublishedAt: json["PublishedAt"] ?? "Null",
   urlToImage: json["urlToImage"] ??
            "https://www.btklsby.go.id/images/placeholder/basic.png",

);
}