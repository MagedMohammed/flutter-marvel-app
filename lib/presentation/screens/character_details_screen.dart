import 'dart:ui';

import 'package:flutter/material.dart';
import '../../data_source/Models/CharactersModel.dart';

class CharacterDetailsScreen extends StatelessWidget {
  CharacterDetailsScreen({super.key});
  // MARK: - Properties.
  // Results character;
  // MARK: - Init
  // CharacterDetailsScreen({super.key, required this.character});
  final String placeholder = "https://placehold.jp/3d4070/ffffff/300x300.png";

  final heightSizedBox = const SizedBox(
    height: 16,
  );

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          // Blur Background
          Stack(
            children: [
              Image.network(
                // "${character.thumbnail!.path!}.${character.thumbnail!.extension}",
                placeholder,
                width: double.infinity,
                height: screenHeight,
                fit: BoxFit.cover,
              ),
              // The blur effect
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    color: Colors.black
                        .withOpacity(0.7), // Adjust the opacity as needed
                  ),
                ),
              ),
            ],
          ),
          // Start <---- Body ------>
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.network(
                      placeholder,
                      // "${character.thumbnail!.path!}.${character.thumbnail!.extension}",
                      width: double.infinity,
                      height: screenHeight / 2,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText("name"),
                      heightSizedBox,
                      descriptionText("not only five centuries 5"),
                      heightSizedBox,
                      titleText("description"),
                      heightSizedBox,
                      descriptionText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText("comics"),
                      heightSizedBox,
                      Container(
                        height: 160,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return comicItem(
                                image: placeholder,
                                title: "What is Lorem Ipsum?");
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 16,
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText("series"),
                      heightSizedBox,
                      Container(
                        height: 160,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return comicItem(
                                image: placeholder,
                                title: "What is Lorem Ipsum?");
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 16,
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText("stories"),
                      heightSizedBox,
                      Container(
                        height: 160,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return comicItem(
                                image: placeholder,
                                title: "What is Lorem Ipsum?");
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 16,
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText("events"),
                      heightSizedBox,
                      Container(
                        height: 160,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return comicItem(
                                image: placeholder,
                                title: "What is Lorem Ipsum?");
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 16,
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: titleText("related link"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: linkItem(title: "detail", link: ""),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: linkItem(title: "wiki", link: ""),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: linkItem(title: "comic link", link: ""),
                ),
              ],
            ),
          ),
          // End <---- Body ------>
        ],
      ),
    );
  }
}

Widget titleText(String text) {
  return Text(
    text.toUpperCase(),
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.red,
    ),
    textAlign: TextAlign.left,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );
}

Widget descriptionText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    textAlign: TextAlign.left,
  );
}

Widget comicItem({required String image, required String title}) {
  return Container(
    height: 140,
    width: 80,
    child: Column(
      children: [
        Image.network(
          image,
          height: 120,
          width: 80,
          fit: BoxFit.fill,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}

Widget linkItem({required String title, required String link}) {
  return Row(
    children: [
      Expanded(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 20,
      ),
    ],
  );
}
