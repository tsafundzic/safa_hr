import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hr')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'safa.hr'**
  String get appName;

  /// No description provided for @languageEn.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEn;

  /// No description provided for @languageHr.
  ///
  /// In en, this message translates to:
  /// **'Croatian'**
  String get languageHr;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @headerGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get headerGallery;

  /// No description provided for @headerContact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get headerContact;

  /// No description provided for @headerBlog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get headerBlog;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'© Tomislav Safundžić. All rights reserved.'**
  String get copyright;

  /// No description provided for @hiThere.
  ///
  /// In en, this message translates to:
  /// **'Hi there!'**
  String get hiThere;

  /// No description provided for @welcomeToMyCornerOfInternet.
  ///
  /// In en, this message translates to:
  /// **'Welcome to my corner of the internet!'**
  String get welcomeToMyCornerOfInternet;

  /// No description provided for @aboutMe0.
  ///
  /// In en, this message translates to:
  /// **'My name is Tomislav, and I\'m a Master\'s degree holder in Computer Engineering. Beyond the world of code and algorithms, I am also a passionate photographer.'**
  String get aboutMe0;

  /// No description provided for @aboutMe1.
  ///
  /// In en, this message translates to:
  /// **'My journey into the realm of technology began with a fascination for creating mobile applications. Over the years, I have dedicated myself to honing my skills and knowledge in software development, in 2020 I have focused on using Flutter to build high-quality, user-friendly applications. However, my journey is not confined to the software development domain alone. Photography has been my first love and a constant companion in my life. What started as a childhood hobby has evolved into a profound passion. I\'ve invested not only in developing my technical expertise but also in acquiring the right equipment, reaching the level of master photographer.'**
  String get aboutMe1;

  /// No description provided for @aboutMe2.
  ///
  /// In en, this message translates to:
  /// **'Beyond the screens and lenses, I find joy in exploring the world. Traveling allows me to immerse myself in diverse cultures, and it provides endless opportunities to capture the beauty of our planet through my lens. The combination of technology and artistry has shaped my unique perspective, whether I\'m coding an application or framing a captivating photograph.'**
  String get aboutMe2;

  /// No description provided for @aboutMe3.
  ///
  /// In en, this message translates to:
  /// **'Join me on this multifaceted journey where technology meets creativity, and each click of the camera or keystroke of code tells a story. I\'m excited to share my experiences, knowledge, and the beauty I encounter along the way.'**
  String get aboutMe3;

  /// No description provided for @letsGetInTouch.
  ///
  /// In en, this message translates to:
  /// **'Get in Touch and Let\'s Capture the Fun!'**
  String get letsGetInTouch;

  /// No description provided for @contactMe.
  ///
  /// In en, this message translates to:
  /// **'Hey there, fellow memory-maker! Ready to turn your moments into timeless treasures? Fantastic! \nDrop me a line using the contacts below:'**
  String get contactMe;

  /// No description provided for @email01.
  ///
  /// In en, this message translates to:
  /// **'Feeling the email vibe? Feel free to drop me a line at'**
  String get email01;

  /// No description provided for @emailSafa.
  ///
  /// In en, this message translates to:
  /// **'info@safa.hr'**
  String get emailSafa;

  /// No description provided for @email02.
  ///
  /// In en, this message translates to:
  /// **'Whether it\'s a simple \'hello\' or a detailed photo masterplan, I\'m all ears for your virtual messages.'**
  String get email02;

  /// No description provided for @phone01.
  ///
  /// In en, this message translates to:
  /// **'Feeling old-school and want to hear a human voice? Ring me up at'**
  String get phone01;

  /// No description provided for @phoneSafa.
  ///
  /// In en, this message translates to:
  /// **'+385 98 837 187'**
  String get phoneSafa;

  /// No description provided for @phone02.
  ///
  /// In en, this message translates to:
  /// **'Warning: I might answer with a camera in hand – blame it on the photographer life!'**
  String get phone02;

  /// No description provided for @instagram01.
  ///
  /// In en, this message translates to:
  /// **'Craving some Instagram fun? Sweet! Head over to'**
  String get instagram01;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'@photo.safa.hr'**
  String get instagram;

  /// No description provided for @instagram02.
  ///
  /// In en, this message translates to:
  /// **'Let\'s keep the conversation as vibrant as a filter and as intriguing as an Insta story.'**
  String get instagram02;

  /// No description provided for @facebook01.
  ///
  /// In en, this message translates to:
  /// **'For those who still rock the Facebook world, find me at'**
  String get facebook01;

  /// No description provided for @facebook02.
  ///
  /// In en, this message translates to:
  /// **'Let\'s keep it light, share some laughs, and maybe drop a comment or two.'**
  String get facebook02;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'@tsafundzic'**
  String get facebook;

  /// No description provided for @contactForm01.
  ///
  /// In en, this message translates to:
  /// **'You are form addict? No problem, you can fill it here'**
  String get contactForm01;

  /// No description provided for @contactForm02.
  ///
  /// In en, this message translates to:
  /// **'Easy way to contact land of pixels and exposure drama. Same as email.'**
  String get contactForm02;

  /// No description provided for @contactRoute.
  ///
  /// In en, this message translates to:
  /// **'safa.hr/contact'**
  String get contactRoute;

  /// No description provided for @contactDescription.
  ///
  /// In en, this message translates to:
  /// **'Ready to capture your moments and create lasting memories? Have a question or a specific request? I\'d love to hear from you! Fill out the form below, and I\'ll get back to you as soon as possible.'**
  String get contactDescription;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get nameHint;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'Ensure I have the right contact information to reach out to you'**
  String get emailHint;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @dateHint.
  ///
  /// In en, this message translates to:
  /// **'If you have a particular date in mind'**
  String get dateHint;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @locationHint.
  ///
  /// In en, this message translates to:
  /// **'If you have a particular location in mind'**
  String get locationHint;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @messageHint.
  ///
  /// In en, this message translates to:
  /// **'Share your thoughts, ideas, or any specific details about the photography services you\'re interested in. The more information, the better!'**
  String get messageHint;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'hr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'hr': return AppLocalizationsHr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
