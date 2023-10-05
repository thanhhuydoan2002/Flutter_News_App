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
    final _random = new Random();
    var sourcesID = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourcesID);


    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourcesID&apiKey=21160ac4085b480b8bd84559f52fadcb"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    //print(articles);

    print("******************************");

    var myArticle = articles[_random.nextInt(articles.length)];
    print(myArticle);

    print("******************************");

    return NewsArt.fromAPItoApp(myArticle);
  }
}