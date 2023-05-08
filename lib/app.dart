
import 'package:ecommerce/layout/home_page_loose.dart';
import 'package:ecommerce/layout/home_page_narrow.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: LayoutBuilder(builder: (context, constraints)=>
        constraints.biggest.width > 800 ?
          const HomePageLoose() :
          const HomePageNarrow()
      )
    );
  }
}