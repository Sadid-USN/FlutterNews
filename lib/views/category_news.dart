import 'package:flutter/material.dart';
import 'package:flutter_news/helper/CategoryNewsClass.dart';
import 'package:flutter_news/helper/articleModel.dart';

import 'article_view.dart';
//import 'home.dart';

class CategoryNews extends StatefulWidget {
  final String categoty;
  CategoryNews({this.categoty});
  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = [];
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.categoty);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter'),
            Text(
              'News',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save)),
        ],
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
                child: Container(
                child: Column(
                  children: <Widget>[
                    
                    /// Blog
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: ListView.builder(
                          itemCount: articles.length,
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return BlogTitle(
                              imageUrl: articles[index].urlToImage,
                              title: articles[index].title,
                              desc: articles[index].description,
                              url: articles[index].url,
                            );
                          }),
                    ),
                  ],
                ),
              ),
          ),
    );
  }
}

class BlogTitle extends StatelessWidget {
  final dynamic imageUrl, title, desc, url;
  BlogTitle({
    @required this.imageUrl,
    @required this.title,
    @required this.desc,
    @required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleViews(
                blogUrl: url,
              ),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(imageUrl)),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(desc),
          ],
        ),
      ),
    );
  }
}
