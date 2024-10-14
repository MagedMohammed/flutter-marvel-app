part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoaded extends CharactersState {
  final CharactersRepository charactersRepository;
  CharactersLoaded({required this.charactersRepository});

  void getCharactersData() {
    charactersRepository.getCharactersData().then((characters){
      print(characters);
    });
  }
}
