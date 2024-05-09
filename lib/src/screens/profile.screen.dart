import 'package:beamer_rearch_state_preserving_test/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';

class ProfileScreenStateful extends ScreenStateful {
  const ProfileScreenStateful({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProfileScreenStatefulState();
  }
}

class ProfileScreenStatefulState
    extends ScreenStatefulState<ProfileScreenStateful> {
  @override
  Widget buildContent(BuildContext context) {
    return const Text('Profile content');
  }

  @override
  String get title => 'Profile';
}

class ProfileScreenRearch extends ScreenRearch {
  const ProfileScreenRearch({super.key});

  @override
  Widget buildContent(BuildContext context, WidgetHandle use) {
    return const Text('Profile content');
  }

  @override
  String get title => 'Profile';
}
