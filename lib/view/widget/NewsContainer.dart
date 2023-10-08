import 'package:flutter/material.dart';
import 'package:news_app/view/detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;
  NewsContainer({super.key,
    required this.imgUrl,
    required this.newsDes,
    required this.newsCnt,
    required this.newsHead,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // *** NEWS NETWORK IMAGE ***
            FadeInImage.assetNetwork(
                height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                placeholder: "assets/img/img1.png",
                image: imgUrl
            ),


            // *** NEWS HEADING AND DESCRIPTION ***
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height: 30,),
                Text(
                    newsHead.length > 90
                        ? "${newsHead.substring(0, 90)}..."
                        : newsHead,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                  const SizedBox(height: 30,),
                  Text(newsDes,
                      style: const TextStyle(fontSize: 12, color: Colors.black38)
                  ),

                const SizedBox(height: 30,),
                Text(
                  newsCnt != "--" ?
                  newsCnt.length > 250
                      ? newsCnt.substring(0,250)
                      : "${newsCnt.toString().substring(0, newsCnt.length - 2)}..." : newsCnt,
                  style: const TextStyle(fontSize: 15),
                ),


              ],),
            ),

            const Spacer(),

            //*** READ MORE BUTTON ***
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailViewScreen(newsUrl: newsUrl)));
                      },
                      child: const Text("Read More")),
                ),
              ],
            ),


            const SizedBox(height: 20,),

      ]),

    );
  }
}
