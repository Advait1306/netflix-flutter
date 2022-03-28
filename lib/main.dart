import 'package:flutter/material.dart';
import 'package:netflix_flutter/widgets/hover_movie_trailer.dart';
import 'package:netflix_flutter/widgets/top_list_item.dart';
import 'package:netflix_flutter/widgets/top_list_item_with_hover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text("hello"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return TopListItemWithHover();
                },
              ),
            ),
          ),
          const SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 400,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const SizedBox(
                    width: 300*10,
                  ),
                  for (var i = 10; i >= 0; i--)
                    Positioned(
                      left: (i) * 300,
                      child: TopListItemWithHover(),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
