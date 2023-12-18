import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/dashboard/dashboard_contact.dart';
import 'package:safa_hr/presentation.dart';

import 'dashboard_about.dart';
import 'dashboard_blog.dart';
import 'home_carousel.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends ConsumerState<DashboardScreen> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Parallax(
        foregroundFirstChild: const Header(aboveOtherWidget: true),
        backgroundFirstChild: const HomeCarousel(),
        fullScreenHeader: true,
        secondChild: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height),
            Container(
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                children: [
                  const DashboardAbout(),
                  56.space(),
                  const Divider(),
                  56.space(),
                  const DashboardBlog(),
                  56.space(),
                  const Divider(),
                  56.space(),
                  const DashboardContact(),
                  56.space(),
                  const BottomShadowContainer(
                    child: SizedBox(
                      width: double.maxFinite,
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
