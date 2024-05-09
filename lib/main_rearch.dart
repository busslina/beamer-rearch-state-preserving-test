import 'package:beamer_rearch_state_preserving_test/lib.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';

void main() {
  runApp(const RearchBootstrapper(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: BeamerDelegate(
        locationBuilder: RoutesLocationBuilder(
          routes: {
            '/': (context, state, data) => BeamPage(
                  key: const ValueKey('index'),
                  child: const IndexScreenRearch(),
                  title: _getTitle(),
                  type: BeamPageType.fadeTransition,
                ),
            '/profile': (context, state, data) => BeamPage(
                  key: const ValueKey('profile'),
                  child: const ProfileScreenRearch(),
                  title: _getTitle(),
                  type: BeamPageType.fadeTransition,
                ),
          },
        ).call,
      ),
    );
  }
}

String _getTitle() => DateTime.now().toIso8601String();
