import 'package:flutter/material.dart';
import 'package:puppil/core/models/courses/courses_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  YoutubePlayerController? _controller;
  bool _isDataLoaded = false;
  String? _videoId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final Data? data = ModalRoute.of(context)?.settings.arguments as Data?;
      if (data != null) {
        setState(() {
          _videoId = data.videoUrlId; 
          _isDataLoaded = true;
        });
        _initializeController();
      }
    });
  }

  void _initializeController() {
    if (_videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: _videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false, // Disable autoplay
          mute: false,
        ),
      );
      setState(() {}); // Refresh the widget to show the video player
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Data? data = ModalRoute.of(context)?.settings.arguments as Data?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Video'),
      ),
      body: Column(
        children: [
          if (_isDataLoaded)
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
              width: MediaQuery.of(context).size.width * 0.95,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(9)),
                child: YoutubePlayer(
                  controller: _controller!,
                  showVideoProgressIndicator: true,
                  onReady: () {
                    // Only play when the user taps to start
                  },
                ),
              ),
            )
          else
            const Center(child: CircularProgressIndicator()), // Show loading indicator while data is being loaded
          if (data != null) 
            Text('${data.content}')
        ],
      ),
    );
  }
}