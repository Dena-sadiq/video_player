import 'package:flutter/material.dart';
import 'package:task_video/chewie_list_item.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: <Widget>[

          //Video From Asset

          // ChewieListItem(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'video/video.mp4',
          //   ),
          //   looping: true,
          // ),

          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            ), looping: true,
          ),


          // GIF
          Image.network(
            "https://media.giphy.com/media/XGhTPVMgzLv7s2TOE6/giphy.gif",
            width: 300,
            height: 400,
            fit: BoxFit.contain,
          )

        ],
      ),
    );
  }
}