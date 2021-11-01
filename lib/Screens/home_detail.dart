import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:catalog_app/Widgets/themes.dart';
import 'package:catalog_app/modals/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) :assert(catalog != null), super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(catalog.image),
      ],),
    );
  }
}
