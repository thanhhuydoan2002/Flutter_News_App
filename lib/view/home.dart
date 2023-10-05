import 'package:flutter/material.dart';
import 'package:news_app/controller/fetchNews.dart';
import 'package:news_app/model/newsArt.dart';
import 'package:news_app/view/widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArt newsArt;

  getNews() async{
    newsArt = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,

          onPageChanged: (value) {
            getNews();
          },

          itemBuilder: (context, index) {

            return NewsContainer(
                imgUrl:
                  newsArt.imgUrl,
                newsHead:
                  newsArt.newsHead,
                newsCnt:
                  newsArt.newsCnt,
                newsDes:
                  newsArt.newsDes,
                newsUrl:
                  newsArt.newsUrl
            );

      }),
    );
  }
}
