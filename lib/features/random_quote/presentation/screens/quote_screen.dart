import 'package:flutter/material.dart';
import 'package:quotes/core/utils/assets_manager.dart';
import 'package:quotes/core/utils/constants.dart';
import 'package:quotes/core/utils/media_query_values.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({Key? key}) : super(key: key);

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
              onTap: () =>
                  Constants.showToast(color: Colors.red, msg: 'Error Happened'),
              child: Image.asset(
                ImgAssets.ministry,
                width: context.width,
              ))),
    );
  }
}
