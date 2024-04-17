import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoGrid extends StatelessWidget {
  final List<String> videoUrls = [
    'https://youtu.be/ByIZIKFmHOA?list=RD5ZmgYAOELco',
    'https://www.youtube.com/watch?v=i_NmPv5WQ0U&list=RD5ZmgYAOELco&index=2&pp=8AUB',
    'https://youtu.be/l7q_WH2cbS0',
    // Add more video URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(padding: EdgeInsets.all(0),
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: videoUrls.length,
      itemBuilder: (context, index) {
        return Column( children: [ SizedBox(
                height: 10,
              ),  SizedBox(
          height: 100,
          width: 100,
          child: VideoItem(videoUrl: videoUrls[index]),
        )]);
        
      
      },
    );
  }
}

class VideoItem extends StatefulWidget {
  final String videoUrl;

  VideoItem({required this.videoUrl});

  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9, // You can adjust the aspect ratio as needed
      child: YoutubePlayer(
        controller: _youtubeController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        onReady: () {},
        onEnded: (YoutubeMetaData metaData) {},
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }
}
