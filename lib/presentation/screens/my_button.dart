import 'package:marking_web/exports.dart';

class MyButton extends StatefulWidget {
  // ignore: use_super_parameters
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {

  VideoPlayerController _controller = VideoPlayerController.asset('assets/videos/marking3.mp4');
  bool _isVideoLoaded = false;
  bool _buttonVisible = true;

  /*void _performAction() {
    onPressed: () {
      setState(() {
        if (_controller.value.isPlaying) {
        } else {
          _controller.play();
        }
      });
    };
  }*/

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() async {
    _controller = VideoPlayerController.asset('assets/videos/marking3.mp4');
    await _controller.initialize();
    setState(() {
      _isVideoLoaded = true;
    });
  }

  @override
  void dispose() {    
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buttonVisible
          ? FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              setState(() {
                  _controller.play();
                  _buttonVisible = false;
              });
            },
            child: const Icon(Icons.play_arrow_rounded, color: Colors.black),
          )
          : const SizedBox(width: 72),
        _isVideoLoaded ? AspectRatio(   //_controller.value.isInitialized
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ) : const CircularProgressIndicator(color: Colors.black),
        
      ],
    );
  }
}