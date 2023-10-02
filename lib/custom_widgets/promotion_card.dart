import 'package:flutter/material.dart';

class PromotionCard extends StatefulWidget {
  const PromotionCard({Key? key}) : super(key: key);

  @override
  State<PromotionCard> createState() => _PromotionCardState();
}

class _PromotionCardState extends State<PromotionCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0), // Rounded corners
      child: GestureDetector(
        onTap: () {
          // Handle the tap gesture here
        },
        child: Image.asset(
          'assets/offerPic.jpg', // Replace with your image path
          //width: 250,
          //height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
