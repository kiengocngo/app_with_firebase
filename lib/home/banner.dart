import 'dart:async';
import 'package:app_with_firebase/data/film_data.dart';
import 'package:flutter/material.dart';

class BannerUI extends StatefulWidget {
  const BannerUI({Key? key}) : super(key: key);

  @override
  State<BannerUI> createState() => _BannerUIState();
}

class _BannerUIState extends State<BannerUI> {
  int currentPage = 0;
  late Timer timer;
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 5), (Timer timer1) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: listFilm.length,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(listFilm[index].image),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        listFilm[index].name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Xem thêm',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
