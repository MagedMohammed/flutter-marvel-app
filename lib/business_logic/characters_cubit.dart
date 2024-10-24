import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data_source/Models/CharactersModel.dart';
import '../data_source/repository/characters_repository.dart';
import '../data_source/web_services_api/web_services_api.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersStates> {
  final CharactersRepository charactersRepository =
      CharactersRepository(webServices: WebServices());
  List<Results> characters = [];

  CharactersCubit(super.initialState);
  static CharactersCubit get(context) => BlocProvider.of<CharactersCubit>(context);

  List<Results> getAllCharacters() {
    // charactersRepository.getCharactersData().then((characters) {
    //   emit(CharactersLoaded());
    //   this.characters = characters;
    // });
    return characters;
  }

  Results getCharacterDetails() {
    return Results() ;
  }
}
