import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mws_task/core/size.dart';

import '../../core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        title: const Text('MWS'),
        leading: const Icon(
          Icons.menu,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: double.infinity,
          height: height * 0.7,
          color: kLightBlue,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.45,
                child: Image.network(''),
              ),
              kHeight10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Traditional Men Sharvai',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  kHeight10,
                  const Text('data'),
                  kHeight10,
                  const Text('499499'),
                  kHeight10,
                  RatingBar.builder(
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: kAmber,
                    ),
                    onRatingUpdate: (value) {},
                    itemSize: 20,
                  ),
                  kHeight10,
                  Text('gdfgdfgdfgdgdfgdfg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
