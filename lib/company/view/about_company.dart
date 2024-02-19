import 'package:flutter/material.dart';

class AboutCompanyPage extends StatefulWidget {
  const AboutCompanyPage({Key? key}) : super(key: key);

  @override
  State<AboutCompanyPage> createState() => _AboutCompanyPageState();
}

class _AboutCompanyPageState extends State<AboutCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [Text(_getAboutCompany())],
          ),
        ),
      ),
    );
  }
  String _getAboutCompany() => "Driven by innovation and value addition approach, Allied Market Research is instrumental in market research and business consulting across various industry verticals since its foundation in 2013. An advisory company of Allied Analytics LLP based in Portland, Oregon, we are striving to offer valuable insights to our clientele through extensive qualitative and quantitative research of different markets. Being a market research firm, we strive to provide a comprehensive understanding of the market to clients along with customizations based on their requirements. Our team of dedicated and passionate analysts and industry experts work around the clock to deliver value and serve clients with best of their capabilities. Adhering to our core values of integrity, quality, and reliability, Allied Market Research has been endeavoring to help clients achieve sustainable growth. Our clientele includes some of the major Fortune 500 companies and many small & medium-sized enterprises. Our expertise, consulting, and market insights have helped in devising expansion strategies based on estimations, gaining competitive edge, and unlocking potential in untapped economies. We foster the culture of cooperation, competence, openness, and excellence to achieve the collective growth and endeavor to become one of the leading market research firms in the world.";
}
