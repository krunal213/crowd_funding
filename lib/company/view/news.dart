import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final Uri _url = Uri.parse('https://www.prnewswire.com/news-releases/organ-on-chip-market-to-reach-1-6-bn-globally-by-2030-at-31-1-cagr-allied-market-research-301528929.html');

  List<String> _getNews() => [
        "2022-04-20 - Organ-on-Chip Market to Reach \$1.6 Bn, Globally, by 2030 at ...\n"
            "Allied Market Research provides global enterprises as well as medium and small businesses with unmatched quality of \"Market Research Reports\"...",
        "2022-04-20 - Alternative Fuel and Hybrid Vehicle Market to Reach \$7,976.0 ...\n"
            "Allied Market Research provides global enterprises as well as medium and small businesses with unmatched quality of \"Market Research Reports\"...",
        "2022-04-19 - Vegan Pet Food Market to Reach \$16.3 Bn, Globally, by 2030 ...\n"
            "Allied Market Research provides global enterprises as well as medium and small businesses with unmatched quality of \"Market Research Reports\"...",
        "2021-11-22 - New Culture lands \$25 million to commercialize its cheesy, animal-free mozzarella\n"
            "Led by sales of cheddar and mozzarella, the U.S. cheese market alone was valued at \$34.3 billion in 2019, and is projected to reach \$45.5 billion by 2027, growing at a compound annual growth rate of 5.25%, according to Allied Market Research. By comparison, the vegan cheese industry is tiny, me ...",
        "2021-09-16 - Mobile Imaging Market Size to Reach \$53.84 Bn, Globally, by 2030 at 6.5% CAGR: Allied Market Research\n"
            "PORTLAND, Ore., Sept. 16, 2021 /PRNewswire/ -- Allied Market Research published a report, titled, \"Mobile Imaging Market by Service Type (X-Ray, CT Scan, Ultrasound, MRI, Mammography, Nuclear Imaging, and Others), Patient Type (Adult and Pediatric), and Facility (Hospitals & Clinics, Home Heal ..."
      ];

  @override
  Widget build(BuildContext context) {
    List<String> news = _getNews();
    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: news.length,
        itemBuilder: (_, int index) {
          return InkWell(
            onTap: () {
              _launchUrl();
            },
            child: Text(
              news[index],
              style: TextStyle(
                fontSize: 16,
                height: 1.55,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 16);
        },
      ),
    );
  }

  Future<void> _launchUrl() async {
    try {
      await launchUrl(_url);
    } on Exception catch (e) {
      print(e);
    }
  }

}
