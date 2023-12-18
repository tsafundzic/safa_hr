import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:safa_hr/common/build_context_extensions.dart';
import 'package:safa_hr/common/page_view_extension.dart';
import 'package:safa_hr/presentation.dart';

import '../common/web_customs_scroll_behavior.dart';

class DashboardBlog extends ConsumerStatefulWidget {
  const DashboardBlog({
    super.key,
  });

  @override
  DashboardBlogState createState() => DashboardBlogState();
}

class DashboardBlogState extends ConsumerState<DashboardBlog> {
  late PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.4);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.currentPage);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.bodyPadding,
      child: Column(
        children: [
          Text(
            "Blog",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          24.space(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
            child: PageView(
              controller: pageController,
              scrollBehavior: WebCustomScrollBehavior(),
              children: <Widget>[
                SlidingCard(
                  name: 'Title',
                  date: 'Date',
                  offset: pageOffset,
                ),
                SlidingCard(
                  name: 'Title',
                  date: 'Date',
                  offset: pageOffset - 1,
                ),
                SlidingCard(
                  name: 'Title',
                  date: 'Date',
                  offset: pageOffset - 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final double offset;

  const SlidingCard({
    Key? key,
    required this.name,
    required this.date,
    required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: "https://images.unsplash.com/photo-1579353977828-2a4eab540b9a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FtcGxlfGVufDB8fDB8fHww",
              height: MediaQuery.of(context).size.height * 0.3,
              alignment: Alignment(-offset.abs(), 0),
              fit: BoxFit.none,
            ),
            12.space(),
            Expanded(
              child: CardContent(
                name: name,
                date: date,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;
  final double offset;

  const CardContent({
    Key? key,
    required this.name,
    required this.date,
    required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(name, style: Theme.of(context).textTheme.titleSmall),
          ),
          8.space(),
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              date,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Transform.translate(
                offset: Offset(48 * offset, 0),
                child: ElevatedButton(
                  child: Transform.translate(
                    offset: Offset(24 * offset, 0),
                    child: const Text('Read more'),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
