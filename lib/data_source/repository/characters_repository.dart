import 'package:flutter/material.dart';
import 'package:marvelapp_project/data_source/web_services_api/web_services_api.dart';
import '../Models/CharactersModel.dart';

class CharactersRepository {
  final WebServices webServices;
  CharactersRepository({required this.webServices});

  Future<List<Results>> getCharactersData() async {
    final data = await webServices.getCharacters(endpoint: '/characters');
    late List<Results> characters;
    // Parsing response into a list of CharacterModel
    try {
      characters = (data['data']['results'] as List)
          .map((json) => Results.fromJson(json))
          .toList();
      // print(" Repository: is Characters Empty ${characters.length}");
    } catch (error) {
      print(error.toString());
    }
    return characters;
  }
}
