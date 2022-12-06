import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [0, 1, 2, 3, 4]
          .map(
            (starIndex) => Star(starCompleteness: (rating - starIndex).clamp(0, 1)),
          )
          .toList(),
    );
  }
}

class Star extends StatelessWidget {
  final _starSize = 30.0;
  final double starCompleteness;

  const Star({super.key, required this.starCompleteness}) : assert(starCompleteness >= 0 && starCompleteness <= 1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.yellow,
          width: _starSize * starCompleteness,
          height: _starSize * 0.93, // Star mask isn't square, so container needs to be squeezed a bit
        ),
        Image.asset(
          'assets/images/star_mask.png',
          width: _starSize,
          height: _starSize,
          alignment: Alignment.topCenter,
        ),
      ],
    );
  }
}
