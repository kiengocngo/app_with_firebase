import 'package:app_with_firebase/data/film_data.dart';
import 'package:app_with_firebase/video/video_screen.dart';
import 'package:flutter/material.dart';

class HotFilmScreen extends StatefulWidget {
  const HotFilmScreen({Key? key}) : super(key: key);

  @override
  State<HotFilmScreen> createState() => _HotFilmScreenState();
}

class _HotFilmScreenState extends State<HotFilmScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return FilmItems(
            index: index,
          );
        });
  }
}

class FilmItems extends StatelessWidget {
  final int index;
  const FilmItems({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoScreen(film: listFilm[index])));
          },
          child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width * 1 / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  listFilm[index].image,
                  fit: BoxFit.fill,
                )),
          ),
        ),
        Positioned(
          top: 6,
          left: 6,
          child: listFilm[index].pss == true
              ? Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Phát song song',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )
              : Container(),
        ),
        Positioned(
          left: 12,
          bottom: 12,
          child: Text(
            listFilm[index].name,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}
