import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session_5/core/util/utils.dart';
import 'package:flutter_session_5/data/constant/status.dart';
import 'package:flutter_session_5/core/di/di.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_bloc.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_event.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'bloc/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
        centerTitle: true,
        actions: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.status != Status.success) {
                return const SizedBox.shrink();
              }

              return IconButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeStarted());
                },
                icon: const Icon(Icons.history),
              );
            },
          ),
        ],
      ),
      body: _renders(),
    );
  }

  Widget _renders() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final button = ElevatedButton(
          onPressed: () {
            context.read<HomeBloc>().add(const HomeEvent.started());
          },
          child: const Text('Get Games'),
        );

        if (state.status == Status.initial || state.status == Status.failure) {
          if (state.status == Status.failure) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.message, textAlign: TextAlign.center),
                  button,
                ],
              ),
            );
          }

          return Center(child: button);
        }

        if (state.status == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final games = state.games;

        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            final game = games[index];
            return GestureDetector(
              onTap: () {
                context.read<DetailBloc>().add(DetailGameDetail(game: game));
              },
              child: Card(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          game.thumbnail,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          right: 16,
                          bottom: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              game.developer,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            game.shortDescription,
                            style: const TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Release',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(Utils.dateFormat(game.releaseDate)),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              game.genre,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 16);
          },
          itemCount: games.length,
        );
      },
    );
  }
}
