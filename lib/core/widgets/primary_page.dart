import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/presentation.dart';

class PrimaryPage extends ConsumerStatefulWidget {
  const PrimaryPage({
    super.key,
    required this.child,
    required this.headerBg,
  });

  final Widget child;
  final Widget headerBg;

  @override
  PrimaryPageScreenState createState() => PrimaryPageScreenState();
}

class PrimaryPageScreenState extends ConsumerState<PrimaryPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Parallax(
        foregroundFirstChild: const Header(),
        backgroundFirstChild: SizedBox(
          height: context.headerImageHeight,
          width: size.width,
          child: widget.headerBg,
        ),
        secondChild: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: context.headerImageHeight),
            widget.child,
            const BottomShadowContainer(
              child: SizedBox(
                width: double.maxFinite,
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
