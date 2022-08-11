import 'package:app_with_firebase/auth/sign_in/view/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  final String uId;
  const HomeScreen({
    Key? key,
    required this.uId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'F Film',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    minRadius: 18,
                    child: const Icon(
                      CupertinoIcons.person,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    uId,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: const HomeBody(),
    );
  }
}
