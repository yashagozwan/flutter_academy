import 'package:flutter/material.dart';
import 'package:flutter_session_4/di/di.dart';
import 'package:flutter_session_4/service/game_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  configureDependencies();

  group('Game Service', () {
    late final GameService gameService;

    setUpAll(() {
      gameService = getIt<GameService>();
    });

    test('Get Games', () async {
      final games = await gameService.getGames();
      debugPrint(games.toString());
      expect(games, isNotEmpty);
    });
  });
}
