import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rating extends StatefulWidget {
  final int maximumRating;
  final Function(int) onRatingSelected;

  Rating(this.onRatingSelected, {this.maximumRating = 5});

  @override
  _Rating createState() => _Rating();
}

class _Rating extends State<Rating> {
  int _currentRating = 0;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating)
      return Icon(Icons.star, color: Color(0xFFBF8989));
    else
      return Icon(Icons.star_border_outlined);
  }

  // the build body function will be resposible for building the user interface
  Widget _buildBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });
          this.widget.onRatingSelected(_currentRating);
        },
      );
    });
    return Row(
      children: stars,
      // mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
