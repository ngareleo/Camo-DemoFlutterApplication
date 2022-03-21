import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SlideHeader.dart';

class PaymentTypes extends StatelessWidget {
  const PaymentTypes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SlideHeader(
              mainTitle: "Payments" ,
              callback: (){}
          ),
          Column(
            children: const [
              PaymentType(
                iconPath: "assets/icons/internet.svg",
                paymentType: "Internet",
              ),
              PaymentType(
                iconPath: "assets/icons/electricity.svg",
                paymentType: "Electricity",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PaymentType extends StatelessWidget {
  const PaymentType({
    Key? key,
    required this.iconPath,
    required this.paymentType,
  }) : super(key: key);

  final String iconPath, paymentType;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Padding(
              padding:  const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 15,
                  left: 10
              ),
              child: SizedBox(
                child: SvgPicture.asset(iconPath),
                height: 70,
                width: 70,
              ),
            ),
            Text(
                paymentType,
                style: const TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                )
            )
          ],
        ),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/right_chevron.svg"))
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
