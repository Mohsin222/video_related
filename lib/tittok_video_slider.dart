import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class TikTokVideoSlider extends StatefulWidget {
  const TikTokVideoSlider({super.key});

  @override
  State<TikTokVideoSlider> createState() => _TikTokVideoSliderState();
}

class _TikTokVideoSliderState extends State<TikTokVideoSlider> {

List<String> vidoes=[
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //         backgroundColor: Colors.black,
      //   title: Text("VIDEO SLIDER"),
      // ),
        body: PageView.builder(
    scrollDirection: Axis.vertical,
    itemCount: vidoes.length,

// onPageChanged: (value) async{
//  await setVid(1);
// },
    itemBuilder: (context, index) {

 return  Container(
  // height: double.infinity,
  // width: double.infinity,
   child: BetterPlayer.network(
    vidoes[index],
    betterPlayerConfiguration:       const BetterPlayerConfiguration(
controlsConfiguration: BetterPlayerControlsConfiguration(
    //for skip play pause button
  enablePlayPause: false,
  //for skip second button
  enableSkips: false,
//loading color
  loadingColor: Colors.pink,
  //all icon etc
//  showControls: false,

  playerTheme: BetterPlayerTheme.material
),
   autoDetectFullscreenAspectRatio: true,
   looping: false,
   fit: BoxFit.fill,
            aspectRatio: 500/900,
            autoPlay: true,
            expandToFill: true
        ),
   ) );
    
   },),
    );
  }
}