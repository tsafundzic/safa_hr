import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/core/gen/assets.gen.dart';
import 'package:safa_hr/presentation.dart';

class DashboardAbout extends StatelessWidget {
  const DashboardAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveBuilder(
      xs: (context) => const _DashboardAboutSmall(),
      sm: (context) => const _DashboardAboutSmall(),
      md: (context) => const _DashboardAboutSmall(),
      xl: (context) => const _DashboardAboutLarge(),
      lg: (context) => const _DashboardAboutLarge(),
    );
  }
}

class _DashboardAboutSmall extends StatelessWidget {
  const _DashboardAboutSmall();

  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    return FluidMargin(
      margin: context.formPadding,
      child: Padding(
        padding: context.bodyPadding,
        child: Column(
          children: [
            Assets.images.dashboard.dashboardSlider05.image(width: 300),
            Text(
              localizations.hiThere,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            context.largeSpacing.space(),
            Text(localizations.aboutMe0),
            context.mediumSpacing.space(),
            Text(localizations.aboutMe1),
            context.mediumSpacing.space(),
            Text(localizations.aboutMe2),
            context.mediumSpacing.space(),
            Text(localizations.aboutMe3),
          ],
        ),
      ),
    );
  }
}

class _DashboardAboutLarge extends StatelessWidget {
  const _DashboardAboutLarge();

  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    return FluidMargin(
      margin: context.formPadding,
      child: Padding(
        padding: context.bodyPadding,
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.hiThere,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  context.largeSpacing.space(),
                  Text(localizations.aboutMe0),
                  context.mediumSpacing.space(),
                  Text(localizations.aboutMe1),
                  context.mediumSpacing.space(),
                  Text(localizations.aboutMe2),
                  context.mediumSpacing.space(),
                  Text(localizations.aboutMe3),
                ],
              ),
            ),
            context.mediumSpacing.space(),
            Assets.images.dashboard.dashboardSlider05.image(width: 300),
          ],
        ),
      ),
    );
  }
}
