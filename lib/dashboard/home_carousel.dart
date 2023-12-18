import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/core/gen/assets.gen.dart';
import 'package:safa_hr/presentation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarousel extends ConsumerStatefulWidget {
  const HomeCarousel({
    super.key,
  });

  @override
  HomeCarouselState createState() => HomeCarouselState();
}

class HomeCarouselState extends ConsumerState<HomeCarousel> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 2),
      (Timer timer) {
        if (_currentPage < 4) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 800),
          curve: Curves.fastOutSlowIn,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, index) {
              return switch (index) {
                0 => Assets.images.dashboard.dashboardSlider00.image(fit: BoxFit.cover),
                1 => Assets.images.dashboard.dashboardSlider01.image(fit: BoxFit.cover),
                2 => Assets.images.dashboard.dashboardSlider02.image(fit: BoxFit.cover),
                3 => Assets.images.dashboard.dashboardSlider03.image(fit: BoxFit.cover),
                4 => Assets.images.dashboard.dashboardSlider05.image(fit: BoxFit.cover),
                _ => 0.space(),
              };
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 5,
                effect: const ExpandingDotsEffect(
                  radius: 2,
                  dotHeight: 4,
                  dotWidth: 6,
                  activeDotColor: Colors.white60,
                  dotColor: Colors.white24,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
