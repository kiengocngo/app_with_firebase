import 'package:app_with_firebase/model/film_model.dart';
import 'package:app_with_firebase/video/video_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  final FilmModel film;
  const VideoScreen({Key? key, required this.film}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        widget.film.image,
                        height: MediaQuery.of(context).size.height * 1 / 3,
                        width: MediaQuery.of(context).size.width * 2 / 5,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VideoUI()));
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: Text(
                                'Xem phim',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phim ${widget.film.name}',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Thể loại: ${widget.film.category}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Quốc gia: ${widget.film.country}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mô tả phim',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.chevron_down,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            minRadius: 20,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 3 / 5,
                            child: TextFormField(
                              
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: 'Nhap binh luan',
                                filled: true,
                                fillColor: Colors.grey[300],
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.2, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.2, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Center(
                        child: Icon(IconData(0xe571,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true,),size: 30,color: Colors.green,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
