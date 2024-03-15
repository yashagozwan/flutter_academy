import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session_5/data/constant/routes.dart';
import 'package:flutter_session_5/data/service/navigation_service.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_bloc.dart';
import 'package:flutter_session_5/presentation/screen/detail/detail_screen.dart';
import 'package:flutter_session_5/presentation/screen/home/bloc/home_bloc.dart';
import 'package:flutter_session_5/presentation/screen/home/home_screen.dart';

import 'core/di/di.dart';

class App extends StatelessWidget {
  const App({super.key});

  BlocProvider<T> _provider<T extends Bloc>(T bloc) =>
      BlocProvider(create: (context) => bloc);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _provider(getIt<HomeBloc>()),
        _provider(getIt<DetailBloc>()),
      ],
      child: MaterialApp(
        navigatorKey: getIt<NavigationService>().key,
        initialRoute: Routes.home,
        routes: {
          Routes.home: (context) => const HomeScreen(),
          Routes.detail: (context) => const DetailScreen(),
        },
      ),
    );
  }
}
