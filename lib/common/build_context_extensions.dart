import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:safa_hr/core/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get appLocalizations => AppLocalizations.of(this);

  void showSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }

  void openUrl(String url) {
    launchUrl(Uri.parse(url));
  }
}

extension SpacingExtensions on BuildContext {
  EdgeInsets get formPadding {
    double horizontal = layout.value(
      xs: 0,
      sm: 0,
      md: 0,
      lg: 150,
      xl: 150,
    );
    double vertical = layout.value(
      xs: 0,
      sm: 0,
      md: 0,
      lg: 70,
      xl: 70,
    );
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  EdgeInsets get horizontalPadding {
    return EdgeInsets.symmetric(
      horizontal: layout.value(
        xs: 20,
        sm: 20,
        md: 20,
        lg: 50,
        xl: 50,
      ),
    );
  }

  EdgeInsets get bodyPadding {
    double horizontal = layout.value(
      xs: 24,
      sm: 24,
      md: 24,
      lg: 48,
      xl: 48,
    );
    double vertical = layout.value(
      xs: 24,
      sm: 24,
      md: 24,
      lg: 48,
      xl: 48,
    );
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  EdgeInsets get headerPadding {
    double horizontal = layout.value(
      xs: 20,
      sm: 20,
      md: 20,
      lg: 32,
      xl: 32,
    );
    double vertical = layout.value(
      xs: 20,
      sm: 20,
      md: 20,
      lg: 32,
      xl: 32,
    );
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  EdgeInsets get bottomPadding {
    double horizontal = layout.value(
      xs: 20,
      sm: 20,
      md: 20,
      lg: 50,
      xl: 50,
    );
    double vertical = layout.value(
      xs: 20,
      sm: 20,
      md: 20,
      lg: 28,
      xl: 28,
    );
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  EdgeInsets get buttonPadding {
    double horizontal = layout.value(
      xs: 24,
      sm: 24,
      md: 24,
      lg: 24,
      xl: 24,
    );
    double vertical = layout.value(
      xs: 16,
      sm: 16,
      md: 20,
      lg: 20,
      xl: 20,
    );
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  num get smallSpacing {
    return layout.value(
      xs: 8,
      sm: 8,
      md: 8,
      lg: 16,
      xl: 16,
    );
  }

  num get mediumSpacing {
    return layout.value(
      xs: 16,
      sm: 16,
      md: 16,
      lg: 32,
      xl: 32,
    );
  }

  num get largeSpacing {
    return layout.value(
      xs: 24,
      sm: 24,
      md: 24,
      lg: 40,
      xl: 40,
    );
  }

  double get headerImageHeight {
    final height = MediaQuery.of(this).size.height;
    return layout.value(
      xs: height * .2,
      sm: height * .3,
      md: height * .3,
      lg: height * .4,
      xl: height * .4,
    );
  }
}
