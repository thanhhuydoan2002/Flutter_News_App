import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 300,),
            const FadeInImage(

              placeholder : AssetImage("assets/img/logo.png"),
              image: AssetImage("assets/img/logo.png") ,

              height: 230 , width: 230,),

            const Spacer(),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Developed By',
                  style: TextStyle(fontSize: 14, color: Colors.black87),

                children: <TextSpan>[
                  TextSpan(
                    text: '\nthanhhuydoan2002',
                    style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
                  ),
                  
                ],
              ),
            ),

            const SizedBox(height: 20,),

          ],

        )),
    );
  }
}
