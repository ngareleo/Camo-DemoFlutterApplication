import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SlideHeader.dart';

class HomeActionCards extends StatelessWidget {
  const HomeActionCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SlideHeader(mainTitle: 'Transfers', callback: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TransactionCardItem(
                    cardMainTitle: 'Card Number',
                    cardInstruction: 'Enter card number',
                    backgroundImagePath: 'assets/icons/acc_number_bg.svg',
                    cardIconPath: 'assets/icons/acc_number_icon.svg',
                  ),
                  TransactionCardItem(
                    cardMainTitle: 'Account Number',
                    cardInstruction: 'Enter account',
                    backgroundImagePath: 'assets/icons/card_number_bg.svg',
                    cardIconPath: 'assets/icons/card_number_icon.svg',
                  ),
                ]),
          )
        ],
      ),
    );
  }
}

class TransactionCardItem extends StatelessWidget {
  const TransactionCardItem({
    Key? key,
    required this.backgroundImagePath,
    required this.cardMainTitle,
    required this.cardInstruction,
    required this.cardIconPath,
  }) : super(key: key);

  final String backgroundImagePath, cardMainTitle, cardInstruction, cardIconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          SizedBox(
            width: 270,
            height: 90,
            child: SvgPicture.asset(backgroundImagePath),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child:
                    SvgPicture.asset(cardIconPath),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardMainTitle,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      cardInstruction,
                      style: const TextStyle(
                        color: Color(0x66ffffff),
                      ),
                    )
                  ],
                ),
              ])
        ],
      ),
    );
  }
}
