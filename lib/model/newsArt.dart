class NewsArt{
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsCnt,
    required this.newsUrl,

  });

  static NewsArt fromAPItoApp(Map<String,dynamic> articles){
    return NewsArt(
        imgUrl: articles["urlToImage"] ?? "https://images.unsplash.com/photo-1497008386681-a7941f08011e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80",
        newsHead: articles["title"] ?? "--",
        newsDes: articles["description"] ?? "--",
        newsCnt: articles["content"] ?? "__",
        newsUrl: articles["url"] ?? "https://news.google.com/home?hl=vi&gl=VN&ceid=VN:vi");
  }
}