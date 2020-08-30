import 'package:blog/constants.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String _avatarUrl;
  HeaderWidget({String avatarUrl})
      : _avatarUrl = avatarUrl ?? Constants.placeholderImageUrl;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.6,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(_avatarUrl),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 15),
            Text(
              'MICHAEL K MALAK',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
