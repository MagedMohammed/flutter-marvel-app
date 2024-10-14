import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp_project/data_source/web_services_api/web_services_api.dart';

import '../../business_logic/characters_cubit.dart';
import '../../data_source/repository/characters_repository.dart';

class CharactersScreen extends StatelessWidget {
  CharactersLoaded? webServices;


  CharactersScreen({super.key}){
    webServices = CharactersLoaded(charactersRepository: CharactersRepository(webServices: WebServices()),
    );
    webServices?.getCharactersData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hi From Flutter"),
      ),
    );
  }
}
