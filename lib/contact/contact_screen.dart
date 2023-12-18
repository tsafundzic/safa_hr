import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:layout/layout.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/common/utils.dart';
import 'package:safa_hr/core/gen/assets.gen.dart';
import 'package:safa_hr/presentation.dart';

import '../core/widgets/lottie_icon.dart';

class ContactScreen extends ConsumerStatefulWidget {
  const ContactScreen({
    super.key,
  });

  @override
  ContactScreenState createState() => ContactScreenState();
}

class ContactScreenState extends ConsumerState<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    return PrimaryPage(
      headerBg: Assets.images.dashboard.dashboardSlider03.image(fit: BoxFit.cover),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: FluidMargin(
          margin: context.formPadding,
          child: Form(
            child: Padding(
              padding: context.bodyPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  context.mediumSpacing.space(),
                  Text(
                    localizations.headerContact,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  context.largeSpacing.space(),
                  context.mediumSpacing.space(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _ContactItem(
                        text: localizations.emailSafa,
                        icon: Icons8.mailbox,
                        onTap: () => sendEmail(localizations.emailSafa),
                      ),
                      context.mediumSpacing.space(),
                      Container(
                        height: 22,
                        width: 1,
                        color: Theme.of(context).colorScheme.shadow,
                      ),
                      context.smallSpacing.space(),
                      _ContactItem(
                        text: localizations.phoneSafa,
                        icon: Icons8.phonelink_ring,
                        onTap: () => callPhone(localizations.phoneSafa),
                      ),
                    ],
                  ),
                  context.largeSpacing.space(),
                  Text(localizations.contactDescription),
                  context.largeSpacing.space(),
                  context.mediumSpacing.space(),
                  PrimaryTextFormField(
                    hintText: localizations.nameHint,
                    label: localizations.name,
                  ),
                  context.largeSpacing.space(),
                  PrimaryTextFormField(
                    hintText: localizations.emailHint,
                    label: localizations.email,
                  ),
                  context.largeSpacing.space(),
                  PrimaryTextFormField(
                    hintText: localizations.dateHint,
                    label: localizations.date,
                  ),
                  context.largeSpacing.space(),
                  PrimaryTextFormField(
                    hintText: localizations.locationHint,
                    label: localizations.location,
                  ),
                  context.largeSpacing.space(),
                  PrimaryTextFormField(
                    hintText: localizations.messageHint,
                    label: localizations.message,
                    maxLines: 12,
                    minLines: 12,
                  ),
                  context.largeSpacing.space(),
                  context.largeSpacing.space(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(localizations.send),
                  ),
                  context.largeSpacing.space(),
                  context.largeSpacing.space(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback? onTap;

  const _ContactItem({
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          LottieIcon(
            icon: icon,
            repeat: true,
            tint: Theme.of(context).colorScheme.secondary,
            size: 22,
          ),
          context.smallSpacing.space(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
