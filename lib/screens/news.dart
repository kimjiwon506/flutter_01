import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

const apiKey = 'a296683a48a84ca091c364b2223a39b9';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    getNews();
  }

  void getNews() async {
    http.Response response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=kr&apiKey=$apiKey"));
    String newsData = response.body;
    var parsingNewsData = jsonDecode(newsData);

    var mynews = parsingNewsData['articles'][0]['title'];
    print(mynews);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('test'), SizedBox(height: 20.0), Text('test2')],
      )),
    ));
  }
}
