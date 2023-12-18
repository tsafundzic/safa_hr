import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/core/gen/assets.gen.dart';
import 'package:safa_hr/core/routing/router.dart';
import 'package:safa_hr/presentation.dart';
import 'header_actions.dart';

class Header extends ConsumerStatefulWidget {
  const Header({
    super.key,
    this.aboveOtherWidget = false,
  });

  final bool aboveOtherWidget;

  @override
  HeaderState createState() => HeaderState();
}

class HeaderState extends ConsumerState<Header> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: context.largeSpacing.toDouble() * 2 + 56,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Theme.of(context).colorScheme.background.withOpacity(0.7),
                if (widget.aboveOtherWidget) ...[
                  Colors.transparent,
                ],
                if (!widget.aboveOtherWidget) ...[
                  Theme.of(context).colorScheme.background.withAlpha(0),
                ],
              ],
            ),
          ),
        ),
        SizedBox(
          width: size.width,
          child: Padding(
            padding: context.headerPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => SplashRoute().go(context),
                      child: Assets.images.safaLogoFull.svg(
                        height: 42,
                        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                      ),
                    ),
                    context.largeSpacing.space(),
                    _Action(
                      title: localizations.headerBlog,
                      onTap: () {
                        //TODO
                      },
                    ),
                    _Action(
                      title: localizations.headerGallery,
                      onTap: () {
                        GalleryRoute().push(context);
                      },
                    ),
                    _Action(
                      title: localizations.headerContact,
                      onTap: () => ContactRoute().push(context),
                    ),
                  ],
                ),
                const HeaderActions(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Action extends StatelessWidget {
  const _Action({
    required this.title,
    this.onTap,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 8),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
