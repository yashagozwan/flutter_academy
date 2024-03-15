import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session_5/core/util/utils.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_bloc.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_state.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            final game = state.game;
            return GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse(game.freeToGameProfileUrl),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: Card(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      game.thumbnail,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            game.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(game.shortDescription),
                          const SizedBox(height: 8),
                          Text(game.genre),
                          Text(Utils.dateFormat(game.releaseDate)),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse(game.freeToGameProfileUrl),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: const Text('Review'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
