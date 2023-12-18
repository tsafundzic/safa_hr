import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/core/gen/assets.gen.dart';
import 'package:safa_hr/presentation.dart';

class Footer extends ConsumerStatefulWidget {
  const Footer({
    super.key,
  });

  @override
  FooterState createState() => FooterState();
}

class FooterState extends ConsumerState<Footer> {
  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
      child: Column(
        children: [
          Assets.images.safaLogoFull.svg(
            height: 48,
            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
          ),
          24.space(),
          Text(
            localizations.copyright,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
