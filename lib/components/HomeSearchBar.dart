import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(34)),
          color: const Color(0xFFFFFFFF).withOpacity(0.05),
        ),
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: IconButton(
                    alignment: Alignment.center,
                    onPressed: () {},
                    splashRadius: 20,
                    icon: SvgPicture.asset("assets/icons/search.svg")),
              ),
            ),
            Flexible(
                flex: 5,
                child: TextFormField(
                    cursorColor: const Color(0x66ffffff),
                    style: const TextStyle(
                      color: Color(0xffffffff),
                    ),
                    decoration: const InputDecoration(
                        hintText: "Search for name & Payment...",
                        filled: false,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Color(0x66ffffff),
                        ))))
          ],
        ),
      ),
    );
  }
}
