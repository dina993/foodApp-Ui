import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/widgets/bell_widget.dart';

class TopProfileAccount extends StatelessWidget {
  const TopProfileAccount({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: size.height * 0.06),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.045,
        vertical: size.height * 0.015,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 7,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        const  SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dina El-Borno',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.045,
                ),
              ),
              Text(
                'didibranding@gmail.com',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.035,
                ),
              ),
            ],
          ),
          // BellWidget(size: size),
        ],
      ),
    );
  }
}
