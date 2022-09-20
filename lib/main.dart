import 'package:flutter/material.dart';
import 'package:music_player_app/src/models/audioplayer_model.dart';
import 'package:music_player_app/src/screens/music_player_screen.dart';
import 'package:music_player_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AudioPlayerModel())],
      child: MaterialApp(
        title: 'Music Player',
        theme: miTema,
        home: MusicPlayerScreen(),
      ),
    );
  }
}
