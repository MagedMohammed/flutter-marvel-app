part of 'characters_cubit.dart';

@immutable
sealed class CharactersStates {}

final class CharactersInitial extends CharactersStates {}

final class CharactersLoaded extends CharactersStates {}
final class CharacterDetailsLoaded extends CharactersStates {}
final class CharactersError extends CharactersStates {}
