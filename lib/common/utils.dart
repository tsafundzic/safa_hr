import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void dismissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

void openUrl(String url) {
  launchUrl(Uri.parse(url));
}

void sendEmail(String email) {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  launchUrl(emailLaunchUri);
}

void callPhone(String phone) {
  final Uri phoneCallUri = Uri(
    scheme: 'tel',
    path: phone,
  );
  launchUrl(phoneCallUri);
}
