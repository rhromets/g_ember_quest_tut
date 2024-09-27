import 'dart:async';

import 'package:flame/components.dart';
import 'package:g_ember_quest_tut/components/ember_quest_game.dart';

//  SpriteAnimationComponent which allows us to define animation as well as position it accordingly in our game world

class EmberPlayer extends SpriteAnimationComponent
// HasGameRef mixin which allows us to reach back to ember_quest.dart and leverage any of the variables or methods that are defined in the game class.
    with
        HasGameRef<EmberQuestGame> {
  EmberPlayer({
    required super.position,
  }) : super(
          size: Vector2.all(64),
          anchor: Anchor.center,
        );

  @override
  FutureOr<void> onLoad() {
    animation = SpriteAnimation.fromFrameData(
      game.images.fromCache('ember.png'),
      SpriteAnimationData.sequenced(
        amount: 4,
        textureSize: Vector2.all(16),
        stepTime: 0.12,
      ),
    );
    return super.onLoad();
  }
}
