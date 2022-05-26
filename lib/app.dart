import 'package:flutter/material.dart';

import 'features/random_quote/presentation/screens/quote_screen.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuoteScreen(),
    );
  }
}
