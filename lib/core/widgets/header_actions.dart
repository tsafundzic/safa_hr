import 'package:di/domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/core/di/di.dart';
import 'package:safa_hr/core/widgets/lottie_icon.dart';

import 'expandable_menu.dart';

class HeaderActions extends ConsumerStatefulWidget {
  const HeaderActions({
    super.key,
  });

  @override
  HeaderActionsState createState() => HeaderActionsState();
}

class HeaderActionsState extends ConsumerState<HeaderActions> {
  @override
  Widget build(BuildContext context) {
    final localizations = context.appLocalizations;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 54,
      width: 168,
      child: ExpandableMenu(
        backgroundColor: Colors.transparent,
        itemContainerColor: Colors.transparent,
        height: 48,
        items: [
          LottieIcon(
            icon: Icons8.globe,
            onTap: () {
              var offset = Offset(size.width - 40, 40);
              var s = const Size(40, 40);
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(offset.dx, offset.dy + s.height, offset.dx + s.width, offset.dy + s.height),
                items: [
                  PopupMenuItem<String>(
                    child: Text(localizations.languageEn),
                    onTap: () {
                      ref.read(appLanguageUseCaseProvider.notifier).setAppLanguage(const Locale('en'));
                    },
                  ),
                  PopupMenuItem<String>(
                    child: Text(localizations.languageHr),
                    onTap: () {
                      ref.read(appLanguageUseCaseProvider.notifier).setAppLanguage(const Locale('hr'));
                    },
                  ),
                ],
              );
            },
          ),
          LottieIcon(
            icon: Icons8.paint_roller,
            onTap: () {
              var offset = Offset(size.width - 40, 40);
              var s = const Size(40, 40);
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(offset.dx, offset.dy + s.height, offset.dx + s.width, offset.dy + s.height),
                items: [
                  PopupMenuItem(
                    child: Text(localizations.themeLight),
                    onTap: () {
                      ref.read(appAppearanceUseCaseProvider.notifier).setAppAppearance(ThemeMode.light);
                    },
                  ),
                  PopupMenuItem(
                    child: Text(localizations.themeDark),
                    onTap: () {
                      ref.read(appAppearanceUseCaseProvider.notifier).setAppAppearance(ThemeMode.dark);
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
