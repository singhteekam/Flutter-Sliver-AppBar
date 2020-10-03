import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new MyHomePage(),
));

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              backgroundColor: Colors.green,
              expandedHeight: 138,
              floating: true,
              pinned: true,
              flexibleSpace: new FlexibleSpaceBar(
                title: new Text("Sliver Appbar",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
              ),
            ),
            new SliverFixedExtentList(
              itemExtent: 100,
              delegate: new SliverChildBuilderDelegate((context,index)=>new ListTile(
                title: new Text("List item $index",style: TextStyle(fontWeight:FontWeight.bold,),),
                trailing: Icon(Icons.list),
              )),
            )
          ],
      ) ,
    );
  }
}

