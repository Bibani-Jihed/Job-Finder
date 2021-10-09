import 'package:flutter/material.dart';
import 'package:job_finder/provider/settings.dart';
import 'package:job_finder/ui/getstarted/get_started.dart';
import 'package:provider/provider.dart';

import 'constants/themes.dart';

void main() {
  runApp(_MyApp());
}
class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return ChangeNotifierProvider<Settings>.value(
          value: Settings(),
          child: MyApp(),
        );
  }
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: Provider.of<Settings>(context).isDarkMode
          ? setDarkTheme
          : setLightTheme,
      home: GetStarted(),
    );
  }
}
