// Video player screen
import 'package:flutter/material.dart';
import 'package:puppil/core/models/courses/courses_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: "fff",
      flags: const YoutubePlayerFlags(
        autoPlay: false, // Disable autoplay
        mute: false,
      ),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final Data? data = ModalRoute.of(context)?.settings.arguments as Data?;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Data? data = ModalRoute.of(context)?.settings.arguments as Data?;
    print('------------------------------------------------');
    print(data?.content);
    print('------------------------------------------------');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Video'),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
            width: MediaQuery.of(context).size.width * 0.95,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  // Only play when the user taps to start
                },
              ),
            ),
          ),
          Text('${data?.content}')
        ],
      ),
    );
  }
}
