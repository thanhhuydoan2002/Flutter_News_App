import 'package:flutter/material.dart';
import 'package:news_app/view/widget/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl: "https://cdnimgen.vietnamplus.vn/uploaded/kg1/2023_09_27/long_an_phuc_hoi.jpg",
                newsDes: "    After two years and a half of implementing the Resolution of the 11th provincial Party Congress for the 2020-2025 tenure, the province obtained positive results in 16 out of its 19 socio-economic development targets, he said. "
                    " \n    The province posted 0.95% and 8.32% growth in the Gross Regional Domestic Product (GRDP) in 2021 and 2022, respectively. Its economy expanded by 3.43% in the first six months of this year. The province currently has 121 out of 161 communes meeting new-style rural standards and many of them satisfy advanced new-style rural standards.",
                newsHead: "Recovery of Long An from COVID-19",
                newsUrl: "https://en.vietnamplus.vn/long-an-makes-strong-recovery-following-covid19-pandemic/268639.vnp");
      }),
    );
  }
}
