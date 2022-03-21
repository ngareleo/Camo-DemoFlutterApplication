import 'package:flutter/material.dart';

class SlideHeader extends StatelessWidget {
  const SlideHeader({
    Key? key,
    required this.mainTitle,
    required this.callback,
  }) : super(key: key);

  final String mainTitle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          mainTitle,
          style: const TextStyle(
            color: Color(0xffffffff),
          ),
        ),
        TextButton(
            onPressed: (){},
            child: const Text(
              "See all",
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            )
        )
      ],
    );
  }
}

class Contact extends StatelessWidget {

  const Contact({
    Key? key,
    required this.username,
    required this.profilePath,
  }) : super(key: key);

  final String username, profilePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: SizedBox(
        height: 130,
        width: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset(profilePath),
            ),
            Text(
              username,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
