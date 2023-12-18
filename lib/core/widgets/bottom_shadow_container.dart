import 'package:flutter/material.dart';

class BottomShadowContainer extends StatelessWidget {
  final Widget child;

  const BottomShadowContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              blurRadius: 10,
              spreadRadius: 5,
            )
          ],
        ),
        child: child,
      ),
    );
  }
}
