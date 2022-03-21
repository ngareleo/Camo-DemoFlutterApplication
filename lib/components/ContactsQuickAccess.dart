import 'package:flutter/material.dart';
import '../models/members.dart' show members;
import 'SlideHeader.dart';

class ContactsQuickAccess extends StatelessWidget {
  const ContactsQuickAccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SlideHeader(mainTitle: 'My Contacts', callback: (){}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    members.length,
                        (index) => Contact(
                        username: members[index].username,
                        profilePath: members[index].imagePath))
            ),
          )
        ],
      ),
    );
  }
}
