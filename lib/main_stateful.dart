import 'package:beamer_rearch_state_preserving_test/lib.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
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
            '/': (context, state, data) => const BeamPage(
                  key: ValueKey('index'),
                  child: IndexScreenStateful(),
                ),
            '/profile': (context, state, data) => const BeamPage(
                  key: ValueKey('profile'),
                  child: ProfileScreenStateful(),
                ),
          },
        ).call,
      ),
    );
  }
}
