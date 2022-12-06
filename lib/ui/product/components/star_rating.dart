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
    return ClipPath(
      clipper: _StarClipper(),
      child: Stack(
        children: [
          Container(
            color: Colors.yellow,
            width: _starSize * starCompleteness,
            height: _starSize,
          ),
          SizedBox(
            width: _starSize,
            height: _starSize,
          ),
        ],
      ),
    );
  }
}

class _StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;
    path.moveTo(w * 0.5, 0);
    path.lineTo(w * 0.62, h * 0.37);
    path.lineTo(w, h * 0.37);
    path.lineTo(w * 0.70, h * 0.61);
    path.lineTo(w * 0.81, h);
    path.lineTo(w * 0.50, h * 0.77);
    path.lineTo(w * 0.18, h);
    path.lineTo(w * 0.29, h * 0.62);
    path.lineTo(0, h * 0.37);
    path.lineTo(w * 0.37, h * 0.37);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}
