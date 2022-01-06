import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:stack/Constants/app_images.dart';

class AudioPlayerController extends GetxController {
  var isPlaying = false.obs;
  var isPause = false.obs;
  var isStart = false.obs;
  var totalTime = 0.obs;
  var playedTime = 0.obs;
  var audioPlayer = AudioCache();
  var isLoading = false.obs;
  AudioPlayer player = AudioPlayer();
  Rx<Music> selectedMusic = Music(
    image: AppImages.musicImage1,
    subTitle: 'Explosive ear candy',
    title: 'How We Got',
    url: 'music/1.mp3',
  ).obs;
  var selectedIndex = 0.obs;
  var musics = [
    Music(
      image: AppImages.musicImage1,
      subTitle: 'Explosive ear candy',
      title: 'How We Got',
      url: 'music/1.mp3',
    ),
    Music(
      image: AppImages.musicImage2,
      subTitle: 'Color out',
      title: 'Alone',
      url: 'music/2.mp3',
    ),
  ];

  change() async {
    if (selectedIndex.value == 0) {
      selectedMusic.value = musics[1];
      selectedIndex.value = 1;
      stop();
      start();
    } else {
      selectedMusic.value = musics[0];
      selectedIndex.value = 0;
      stop();
      start();
    }
  }

  start() async {
    if (isStart.value) {
      if (isPlaying.value) {
        player.pause();
        setPause();
      } else {
        player.resume();
        setPlay();
      }
      return;
    }
    await audioPlayer.load(selectedMusic.value.url);
    setStart();
    play();
  }

  play() async {
    print('resume');
    player = await audioPlayer.play(selectedMusic.value.url);
    setPlay();
  }

  pause() async {
    print('pause');
    if (isPlaying.value) {
      player.stop();
    }
    setPause();
  }

  stop() async {
    if (isStart.value) {
      player.stop();
    }
    reset();
  }

  reset() {
    isPlaying.value = false;
    isPause.value = false;
    isStart.value = false;
    totalTime.value = 0;
    playedTime.value = 0;
    isLoading.value = false;
  }

  setPlay() {
    isPlaying.value = true;
    isPause.value = false;
  }

  setStart() {
    isStart.value = true;
    setPlay();
  }

  setPause() {
    isPlaying.value = false;
    isPause.value = true;
  }
}

class Music {
  String image;
  String title;
  String subTitle;
  String url;
  Music({
    required this.image,
    required this.subTitle,
    required this.title,
    required this.url,
  });
}
