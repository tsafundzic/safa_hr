import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Parallax extends ConsumerStatefulWidget {
  const Parallax({
    required this.backgroundFirstChild,
    required this.foregroundFirstChild,
    required this.secondChild,
    this.fullScreenHeader = false,
    super.key,
  });

  final Widget backgroundFirstChild;
  final Widget foregroundFirstChild;
  final Widget secondChild;
  final bool fullScreenHeader;

  @override
  ParallaxState createState() => ParallaxState();
}

class ParallaxState extends ConsumerState<Parallax> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: updateOffsetAccordingToScroll,
      child: ScrollConfiguration(
        behavior: NoScrollGlow(),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -.25 * offset,
              child: widget.backgroundFirstChild,
            ),
            SingleChildScrollView(
              child: widget.secondChild,
            ),
            Positioned(
              top: widget.fullScreenHeader ? -.12 * offset : -.32 * offset,
              child: widget.foregroundFirstChild,
            ),
          ],
        ),
      ),
    );
  }

  /// Returns true to cancel the notification bubbling.
  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    if (scrollNotification.metrics.axis == Axis.vertical) {
      setState(() => offset = scrollNotification.metrics.pixels);
    }
    return true;
  }
}

class NoScrollGlow extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
