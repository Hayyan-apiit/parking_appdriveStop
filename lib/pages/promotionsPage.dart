import 'package:drivestop/custom_widgets/promotion_card.dart';
import 'package:flutter/material.dart';

class PromotionsPage extends StatefulWidget {
  const PromotionsPage({Key? key}) : super(key: key);

  @override
  State<PromotionsPage> createState() => _PromotionsPageState();
}

class _PromotionsPageState extends State<PromotionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff445D48),
        elevation: 0,
        title: Text('LOYALTY/PROMOTIONS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              PromotionCard(),
              SizedBox(height: 20,),
              PromotionCard(),
              SizedBox(height: 20,),
              PromotionCard(),
            ],
          ),
        ),
      ),
    );
  }
}
