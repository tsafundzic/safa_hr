import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:layout/layout.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/common/spacing_extension.dart';
import 'package:safa_hr/common/utils.dart';
import 'package:safa_hr/core/routing/router.dart';
import 'package:safa_hr/core/widgets/lottie_icon.dart';

class DashboardContact extends StatelessWidget {
  const DashboardContact({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    return FluidMargin(
      margin: context.formPadding,
      child: Padding(
        padding: context.bodyPadding,
        child: Column(
          children: [
            Text(
              localizations.letsGetInTouch,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            context.largeSpacing.space(),
            Text(
              localizations.contactMe,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            context.largeSpacing.space(),
            Wrap(
              spacing: context.mediumSpacing.toDouble(),
              runSpacing: context.mediumSpacing.toDouble(),
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                _ContactItem(
                  lottieIcon: Icons8.mailbox,
                  intro: localizations.email01,
                  contact: localizations.emailSafa,
                  outro: localizations.email02,
                  onTap: () => sendEmail(localizations.email),
                ),
                _ContactItem(
                  lottieIcon: Icons8.phonelink_ring,
                  intro: localizations.phone01,
                  contact: localizations.phoneSafa,
                  outro: localizations.phone02,
                  onTap: () => callPhone(localizations.phoneSafa),
                ),
                _ContactItem(
                  lottieIcon: Icons8.checklist,
                  intro: localizations.contactForm01,
                  contact: localizations.contactRoute,
                  outro: localizations.contactForm02,
                  onTap: () => ContactRoute().push(context),
                ),
                _ContactItem(
                  lottieIcon: Icons8.instagram_shot,
                  intro: localizations.instagram01,
                  contact: localizations.instagram,
                  outro: localizations.instagram02,
                  onTap: () => openUrl("https://www.instagram.com/tsafundzic/"),
                ),
                _ContactItem(
                  lottieIcon: Icons8.facebook_messenger_click,
                  intro: localizations.facebook01,
                  contact: localizations.facebook,
                  outro: localizations.facebook02,
                  onTap: () => openUrl("https://www.facebook.com/tsafundzic"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    required this.intro,
    required this.contact,
    required this.outro,
    this.onTap,
    required this.lottieIcon,
  });

  final String intro;
  final String contact;
  final String outro;
  final VoidCallback? onTap;
  final String lottieIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(context.largeSpacing.toDouble()),
        child: SizedBox(
          width: 200,
          child: Column(
            children: [
              LottieIcon(
                icon: lottieIcon,
                repeat: true,
                tint: Theme.of(context).colorScheme.secondary,
                size: 32,
              ),
              context.mediumSpacing.space(),
              Text(
                intro,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              context.mediumSpacing.space(),
              TextButton(
                onPressed: onTap,
                child: Text(
                  contact,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              context.mediumSpacing.space(),
              Text(
                outro,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
