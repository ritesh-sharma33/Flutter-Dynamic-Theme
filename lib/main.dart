import 'package:dynamic_theme/home_page.dart';
import 'package:dynamic_theme/theme.bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: false,
      stream: bloc.darkThemeIsEnabled,
      builder: (context, snapshot) {
        return MaterialApp(
          theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
          home: new HomePage(snapshot.data, bloc)
        );
      }
    );
  }
}

final bloc = ThemeBloc();