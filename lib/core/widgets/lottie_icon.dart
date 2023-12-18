import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieIcon extends StatefulWidget {
  const LottieIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.size,
    this.tint,
    this.animated = true,
    this.repeat = false,
  });

  final String icon;
  final VoidCallback? onTap;
  final double? size;
  final Color? tint;
  final bool animated;
  final bool repeat;

  @override
  LottieIconState createState() => LottieIconState();
}

class LottieIconState extends State<LottieIcon> with TickerProviderStateMixin {
  late AnimationController _iconController;

  @override
  void initState() {
    if (widget.repeat) {
      _iconController = AnimationController(vsync: this, duration: const Duration(seconds: 1))..repeat();
    } else {
      _iconController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        if (widget.animated) {
          _iconController.repeat();
        }
      },
      onExit: (event) {
        if (widget.animated) {
          _iconController.stop();
        }
      },
      child: IconButton(
        onPressed: () {
          widget.onTap?.call();
          if (widget.animated) {
            if (_iconController.status == AnimationStatus.dismissed) {
              _iconController.reset();
              _iconController.animateTo(1);
            } else {
              _iconController.reverse();
            }
          }
        },
        icon: ColorFiltered(
          colorFilter: ColorFilter.mode(
            widget.tint ?? Theme.of(context).colorScheme.onBackground,
            BlendMode.srcIn,
          ),
          child: Lottie.asset(
            widget.icon,
            controller: _iconController,
            width: widget.size ?? 24,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _iconController.dispose();
    super.dispose();
  }
}
