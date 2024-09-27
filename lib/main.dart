import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:g_fastrun/components/ember_quest_game.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  runApp(
    const GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new,
    ),
  );
}
