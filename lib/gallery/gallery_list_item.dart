import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GalleryDetailsScreen extends ConsumerStatefulWidget {
  const GalleryDetailsScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  GalleryDetailsScreenState createState() => GalleryDetailsScreenState();
}

class GalleryDetailsScreenState extends ConsumerState<GalleryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("GALLERY DETAILS WIP"),
      ),
    );
  }
}
