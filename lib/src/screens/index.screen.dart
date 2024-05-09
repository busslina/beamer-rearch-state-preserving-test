import 'package:beamer/beamer.dart';
import 'package:beamer_rearch_state_preserving_test/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:rearch/rearch.dart';

class IndexScreenStateful extends ScreenStateful {
  const IndexScreenStateful({super.key});

  @override
  State<StatefulWidget> createState() {
    return IndexScreenStatefulState();
  }
}

class IndexScreenStatefulState
    extends ScreenStatefulState<IndexScreenStateful> {
  int _counter = 0;

  @override
  Widget buildContent(BuildContext context) {
    return Row(
      children: [
        // Counter
        Text('Counter: $_counter'),

        // Counter increment
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: const Text('Increment'),
        ),

        // Profile shortcurt
        ElevatedButton(
          onPressed: () {
            context.beamToNamed('/profile');
          },
          child: const Text('Go to profile'),
        ),
      ],
    );
  }

  @override
  String get title => 'Index';
}

class IndexScreenRearch extends ScreenRearch {
  const IndexScreenRearch({super.key});

  @override
  Widget buildContent(BuildContext context, WidgetHandle use) {
    final counter = use.data(0);

    return Row(
      children: [
        // Counter
        Text('Counter: ${counter.value}'),

        // Counter increment
        ElevatedButton(
          onPressed: () {
            counter.value++;
          },
          child: const Text('Increment'),
        ),

        // Profile shortcurt
        ElevatedButton(
          onPressed: () {
            context.beamToNamed('/profile');
          },
          child: const Text('Go to profile'),
        ),
      ],
    );
  }

  @override
  String get title => 'Index';
}
