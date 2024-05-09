import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';

mixin Screen {
  String get title;
}

abstract class ScreenStateful extends StatefulWidget {
  const ScreenStateful({super.key});
}

abstract class ScreenStatefulState<T extends ScreenStateful> extends State<T>
    with Screen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Title
            Text(title),

            // Content
            buildContent(context),
          ],
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context);
}

abstract class ScreenRearch extends RearchConsumer with Screen {
  const ScreenRearch({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Title
            Text(title),

            // Content
            buildContent(context, use),
          ],
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context, WidgetHandle use);
}
