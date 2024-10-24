import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp_project/data_source/Models/CharactersModel.dart';
import '../../business_logic/characters_cubit.dart';
import '../../shared/Widgets/widgets.dart';
import 'character_details_screen.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharactersCubit(CharactersInitial()),
      child: BlocConsumer<CharactersCubit, CharactersStates>(
        listener: (context, state) {
          // TODO: implement listener
          print("current state = $state");
        },
        builder: (context, state) {
          CharactersCubit bloc = CharactersCubit.get(context);
          List<Results> characters = bloc.getAllCharacters();
          return Scaffold(
            appBar: AppBar(
              title: Title(
                color: Colors.black,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/Marvel_Logo.svg.png",
                      height: 40.0,
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
              backgroundColor: Colors.black,
            ),
            // Body
            body: ListView.builder(
              itemBuilder: (context, index) {
                Results character = characters[index];
                return GestureDetector(
                  child: charactersItem(
                      image:
                          "${character.thumbnail!.path!}.${character.thumbnail!.extension!}",
                      title: character.name!),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CharacterDetailsScreen() ; // TODO: - edit to name of new page.
                    }) );
                  },
                );
              },
              itemCount: characters.length,
            ),
          );
        },
      ),
    );
  }
}
