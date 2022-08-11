import 'package:app_with_firebase/home/banner.dart';
import 'package:app_with_firebase/home/full_film_screen.dart';
import 'package:app_with_firebase/home/hot_film_screen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          const BannerUI(),
          const SizedBox(
            height: 6,
          ),
          const Divider(),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Phim bộ nổi bật',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey[800]),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FullFilmScreen()));
                },
                child: Text(
                  'Xem thêm',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey[800]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Expanded(child: HotFilmScreen()),
        ],
      ),
    );
  }
}
