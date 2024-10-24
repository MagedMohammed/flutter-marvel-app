import 'package:marvelapp_project/data_source/Models/CharactersModel.dart';
import 'package:marvelapp_project/data_source/web_services_api/web_services_api.dart';

class CharacterDetailsRepository {
  WebServices webServices;

  CharacterDetailsRepository({required this.webServices});

  Future<Results> getResultDetails() async {
  final data = await webServices.getCharacters(endpoint: "");
       return Results();
  }
}
