

import 'package:flutter/material.dart';
import 'package:responsive_ui_1/screens/responsiveCard.dart';

class MainResponsiveCards extends StatelessWidget {
  const MainResponsiveCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.light(),
      home: ResponsiveCard(),
    );
  }
}
