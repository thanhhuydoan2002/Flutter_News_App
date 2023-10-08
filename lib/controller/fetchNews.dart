// https://newsapi.org/v2/top-headlines?sources=google-news-uk&apiKey=21160ac4085b480b8bd84559f52fadcb
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:news_app/model/newsArt.dart';

class FetchNews{

  static List sourcesId = [
    "abc-news",
    "financial-post",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-wall-street-journal",
    "the-washington-times",
  ];

  static Future<NewsArt> fetchNews() async{
    final random = Random();
    var sourcesID = sourcesId[random.nextInt(sourcesId.length)];
    print(sourcesID);


    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourcesID&apiKey=21160ac4085b480b8bd84559f52fadcb"));

    Map bodyData = jsonDecode(response.body);
    List articles = bodyData["articles"];

    var myArticle = articles[random.nextInt(articles.length)];

    return NewsArt.fromAPItoApp(myArticle);
  }
}