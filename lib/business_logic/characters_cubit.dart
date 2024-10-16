import 'package:bloc/bloc.dart';
import 'package:marvelapp_project/data_source/repository/characters_repository.dart';
import 'package:meta/meta.dart';

import '../data_source/Models/CharactersModel.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {


  final CharactersRepository charactersRepository;
  List<Results> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Results> getAllCharacters() {
    charactersRepository.getCharactersData().then((characters) {
      emit(CharactersLoaded(charactersRepository),
      );
      this.characters = characters;
    });

    return characters;
  }



}
