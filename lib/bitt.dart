import 'dart:io';

import 'package:better_player/better_player.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class BittyPlayer extends StatefulWidget {
  const BittyPlayer({super.key});

  @override
  State<BittyPlayer> createState() => _BittyPlayerState();
}

class _BittyPlayerState extends State<BittyPlayer> {

BetterPlayerController? _betterPlayerController;
    List dataSourceList = <BetterPlayerDataSource>[];
      List dataSourceList1 = <BetterPlayerDataSource>[
           BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      ),
        BetterPlayerDataSource(BetterPlayerDataSourceType.network,
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
                BetterPlayerDataSource(BetterPlayerDataSourceType.network,
          "https://sample.vodobox.com/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8"),

      ];
  List createDataSet() {

    dataSourceList.add(
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      ),
    );
    dataSourceList.add(
      BetterPlayerDataSource(BetterPlayerDataSourceType.network,
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
    );

    return dataSourceList;
  }


List<String> vidoes=[
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
];
  @override
  void initState() {
    super.initState();
    // createDataSet();
    // BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
    //     BetterPlayerDataSourceType.network,
    //     "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4");
        
    // _betterPlayerController = BetterPlayerController(
    //     const BetterPlayerConfiguration(
    //         aspectRatio: 500/900,
    //     ),
    //     betterPlayerDataSource: betterPlayerDataSource);
  }

bool isloading=false;
setVid(int index)async{
  
  isloading=true;
      BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
       vidoes[index]);

               
    _betterPlayerController = BetterPlayerController(
        const BetterPlayerConfiguration(
            aspectRatio: 500/900,
        ),
        betterPlayerDataSource: betterPlayerDataSource);
        isloading=false;
        // setState(() {
          
        // });
}
List<Color> clr=[Colors.red, Colors.blue,Colors.green];
File? file;
  getVideo()async{
     BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.file,
        file!.path);

            _betterPlayerController = BetterPlayerController(
        const BetterPlayerConfiguration(),
        betterPlayerDataSource: betterPlayerDataSource);
  }
// @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _betterPlayerController!.dispose();
//   }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Example player"),
        actions: [
          IconButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>FileMangerPage()));

          }, icon: Icon(Icons.filter_drama))
        ],
      ),
//       body: Container(
//         color: Colors.red,
//         // aspectRatio: 16 / 9,
//         height: double.infinity,
//         width: double.infinity,
//         // child: BetterPlayer.network(
//         //   "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//         //   betterPlayerConfiguration: BetterPlayerConfiguration(
//         //     aspectRatio: 16 / 9,
//         //   ),
//         // ),
//       //      child: BetterPlayer(
//       //   controller: _betterPlayerController!,
//       // ),
//        child: BetterPlayerPlaylist(
//           betterPlayerConfiguration: BetterPlayerConfiguration(
//        aspectRatio: 500/900,
//             fit: BoxFit.fill,
//             // aspectRatio: 100 / 100
//           ),
//           betterPlayerPlaylistConfiguration:  BetterPlayerPlaylistConfiguration(

// loopVideos: true

//           ),
//           betterPlayerDataSourceList: dataSourceList   as dynamic),
//     )
   
   body: PageView.builder(
    scrollDirection: Axis.vertical,
    itemCount: vidoes.length,

// onPageChanged: (value) async{
//  await setVid(1);
// },
    itemBuilder: (context, index) {
    //  return  BetterPlayer(

    //     controller: _betterPlayerController!,

    //   );
 return  Container(
  height: double.infinity,
  width: double.infinity,
   child: BetterPlayer.network(
    vidoes[index],
    betterPlayerConfiguration:       const BetterPlayerConfiguration(
   autoDetectFullscreenAspectRatio: true,
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