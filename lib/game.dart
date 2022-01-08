import 'package:flame/game.dart';
import 'package:flutter_flame_sizing_mwe/parallax_background.dart';

class TheGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    await add(ParallaxBackground(size: size));
    print('game\'s children length ${children.length}');
  }

  @override
  void onGameResize(Vector2 canvasSize) {
    super.onGameResize(canvasSize);
    print('game resized to ${canvasSize}');
  }
}
