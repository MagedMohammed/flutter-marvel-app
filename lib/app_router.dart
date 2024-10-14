import 'package:flutter/material.dart';
import 'package:marvelapp_project/presentation/screens/charachters_screen.dart';

class AppRouter {
  Route? generateRouter(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => CharactersScreen());
    }
  }
}
