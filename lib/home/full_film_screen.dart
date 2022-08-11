import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FullFilmScreen extends StatefulWidget {
  const FullFilmScreen({Key? key}) : super(key: key);

  @override
  State<FullFilmScreen> createState() => _FullFilmScreenState();
}

class _FullFilmScreenState extends State<FullFilmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Phim bộ nổi bật',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        elevation: 0.5,
      ),
      body: Column(),
    );
  }
}
