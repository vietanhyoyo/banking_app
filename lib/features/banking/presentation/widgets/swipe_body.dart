import 'package:banking_app/features/banking/presentation/widgets/image_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';

class SwipeBody extends StatelessWidget {
  final List<String> imageList = [
    "assets/images/cards/card7.png",
    "assets/images/cards/card7.png",
    "assets/images/cards/card7.png",
  ];

  SwipeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
      layout: SwiperLayout.TINDER,
      itemWidth: 500, 
      itemHeight: 260,
      itemBuilder: (context, index) {
        final image = imageList[index];
        return ImageCard(
          imageUrl: image,
        );
      },
      itemCount: imageList.length,
    );
  }
}
