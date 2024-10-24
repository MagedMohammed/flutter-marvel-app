import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp_project/data_source/Models/CharactersModel.dart';
import 'package:marvelapp_project/presentation/screens/charachters_screen.dart';
import 'package:marvelapp_project/presentation/screens/character_details_screen.dart';
import 'business_logic/characters_cubit.dart';

class AppRouter {
  Route? generateRouter(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());

    }
  }
}
