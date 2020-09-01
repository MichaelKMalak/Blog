import 'package:blog/constants.dart';
import 'package:blog/route_generator.dart';
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
            InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, RouteGenerator.initialRoute),
              child: Text(
                Constants.userName,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
