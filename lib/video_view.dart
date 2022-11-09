import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:wsy_player/wsy_player.dart';

class VideoView extends StatefulWidget {
  final WsyPlayer player;
  final FijkFit fit;

  const VideoView({super.key, required this.player,this.fit = FijkFit.contain});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onTapVideo,
        child: Stack(
          children: [
            AbsorbPointer(
                absorbing: true, child: FijkView(player: widget.player,fit: widget.fit,)),
            if(widget.player.state == FijkState.paused)
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'asset/images/play.png',
                  width: 70,
                  height: 70,
                ),
              )
          ],
        ),
      ),
    );
  }

  void onTapVideo() {
    var state = widget.player.state;
    print('onTapVideo$state');
    if (widget.player.state == FijkState.paused) {
      widget.player.start();
    } else {
      widget.player.pause();
    }
    // //重绘
    setState(() {});
  }

  @override
  void dispose() {

    super.dispose();
    //资源回收
    widget.player.release();
  }
}
