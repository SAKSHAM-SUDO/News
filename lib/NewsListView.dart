
import 'package:flutter/material.dart';
import 'package:news/fetch.dart';

import 'model.dart';

class NewsListView extends StatelessWidget
{

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'News',
    home: Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: FutureBuilder<List>(
          future: fetchNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData)
            {
              List<News> news = snapshot.data;
              return newsListView(news);
            } else if (snapshot.hasError)
            {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    ),
  );
}


ListView newsListView(data) {
  return ListView.separated(
      separatorBuilder: (BuildContext context , int position)=> Divider(height: 4, color: Colors.grey,),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _tile(data[index].name, index+1);
      });
}

ListTile _tile(String title, int i) => ListTile(
  title: Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
      )),
  leading: new CircleAvatar(
        backgroundColor: Colors.blue,
        child: new Text("$i"),
  ),
  // subtitle: Text(subtitle),
);
}