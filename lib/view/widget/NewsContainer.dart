import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  NewsContainer({super.key,
    required this.imgUrl,
    required this.newsDes,
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
            Image.network(
                height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                imgUrl
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height: 20,),
                Text(
                    newsHead,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                ),
                const SizedBox(height: 10,),
                Text(newsDes, style: const TextStyle(fontSize: 16),),
              ],),
            ),

            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        print("GOING TO $newsUrl");
                      },
                      child: Text("Read More")),
                ),
              ],
            ),
            SizedBox(height: 20,),
      ]),

    );
  }
}
